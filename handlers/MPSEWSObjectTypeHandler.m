#import "MPSEWSObjectTypeHandler.h"


@interface MPSEWSHandlerValue : NSObject

@property (retain) NSString* prop;
@property (retain) Class     cls;
@property (retain) NSString* sel;

- (SEL) selector;

- (id) initProperty:(NSString*) property withHandlerKey: (Class) cls;
- (id) initProperty:(NSString*) property withHandlerKey: (Class) cls withSelector: (NSString*) sel;
@end

@implementation MPSEWSHandlerValue
{
    SEL selector;
}
- (id) initProperty:(NSString*) property withHandlerKey: (Class)cls
{
    self = [super init];

    [self setProp: property];
    [self setCls:  cls];
	[self setSel:  nil];

    selector = nil;

    return self;
}

- (id) initProperty:(NSString*) property withHandlerKey: (Class)cls withSelector: (NSString*) sel
{
    self = [super init];

    [self setProp: property];
    [self setCls:  cls];
    [self setSel:  sel];

    selector = nil;

    return self;
}
- (SEL) selector
{
    if (!selector) {
		selector = NSSelectorFromString([[self sel] stringByAppendingString:@":"]);
    }
    return selector;
}

- (BOOL) isList
{
    return [self sel] ? TRUE : FALSE;
}

@end


@implementation MPSEWSObjectTypeHandler
{
    Class clazz;

    NSMutableArray*      keys;
    NSMutableDictionary* elements;

    NSMutableDictionary* attributes;

    Class contentHandlerClass;
    id<MPSEWSHandlerProtocol> contentHandler;
}

- (id) initWithClass: (Class) c andContentHandlerClass:(Class) h
{
    self = [super initWithClass:c];

    clazz = c;

    keys      = [[NSMutableArray alloc] initWithCapacity: 32];
    elements  = [[NSMutableDictionary alloc] initWithCapacity: 32];
	attributes = [[NSMutableDictionary alloc] initWithCapacity:10];

    contentHandlerClass = h;

    return self;
}

- (id) initWithClass: (Class) c
{
    self = [super initWithClass:c];

    clazz = c;

    keys      = [[NSMutableArray alloc] initWithCapacity: 32];
    elements  = [[NSMutableDictionary alloc] initWithCapacity: 32];
	attributes = [[NSMutableDictionary alloc] initWithCapacity:10];

    contentHandlerClass = nil;

    return self;
}

- (id) constructWithAttributes: (NSDictionary *)attrs
{
    id v = [[clazz alloc] init];

    for (NSString* key in attrs)
    {
        MPSEWSHandlerValue* h = [attributes objectForKey:key];
        if (h) {
            id<MPSEWSHandlerProtocol> handler = [MPSEWSHandler handlerForClass:[h cls]];

            id obj = [handler constructWithAttributes:nil];
            obj = [handler updateObject:obj withCharacters:[attrs objectForKey:key]];
            [v setValue:obj forKey:[h prop]];
        }
    }
    return v;
}

- (id) updateObject:(id)obj forKey:(NSString*)tag namespace:(char) ns withValue:(id)v
{
    tag = [NSString stringWithFormat:@"%c:%@", ns, tag];

    MPSEWSHandlerValue* h = [elements objectForKey:tag];

    if ([h sel]) {
        //[obj performSelector: [h selector] withObject:v];

        SEL sel = [h selector];
        IMP imp = [obj methodForSelector:sel];
        void (*func)(id, SEL, id) = (void*) imp;
        func (obj, sel, v);
    }
    else {
        [obj setValue:v forKey:[h prop]];
    }
    return obj;
}

- (id) updateObject:(id)obj withCharacters:(NSString*) s
{
    if (contentHandlerClass) {
        contentHandler = contentHandler ? contentHandler : [MPSEWSHandler handlerForClass:contentHandlerClass];

        id v = [obj valueForKey:@"simpleContent"];
        v = [contentHandler updateObject:v withCharacters:s];
        [obj setValue:v forKey:@"simpleContent"];
    }
    return obj;
}


- (void) property      :(NSString *) property
         withNamespace :(char) ns
         withXmlTag    :(NSString*) tag
         withHandler   :(Class) cls
{
    tag = [NSString stringWithFormat:@"%c:%@", ns, tag];
    [keys     addObject:tag];
    [elements setObject:[[MPSEWSHandlerValue alloc] initProperty: property withHandlerKey: cls] forKey:tag];
}

- (void) property    :(NSString *) property
         withAttrTag :(NSString*) tag
         withHandler :(Class) cls
{
    [attributes setObject:[[MPSEWSHandlerValue alloc] initProperty: property withHandlerKey: cls] forKey:tag];
}

- (void) listProperty  :(NSString *) property
         useSelector   :(NSString*) method
         withNamespace :(char) ns
         withXmlTag    :(NSString*) tag
         withHandler   :(Class) cls
{
    tag = [NSString stringWithFormat:@"%c:%@", ns, tag];

    [keys addObject:tag];
    [elements setObject:[[MPSEWSHandlerValue alloc] initProperty: property withHandlerKey:cls withSelector:method] forKey:tag];
}

- (id<MPSEWSHandlerProtocol>) handlerForElement: (NSString *) tag namespace:(char) ns
{
    tag = [NSString stringWithFormat:@"%c:%@", ns, tag];
    return [MPSEWSHandler handlerForClass:[[elements objectForKey: tag] cls]];
}

- (void) writeXmlInto:(NSMutableString*)buffer for:(id) object withTag:(NSString*)tag 
{
    NSAssert (tag, @"Tag can't be nil for object");

    [buffer appendString:@"<"];
    [buffer appendString:tag];

    for (NSString* key in attributes)
    {
        MPSEWSHandlerValue* h = [attributes objectForKey:key];
        id v = [object valueForKey:[h prop]];
        if (v)
        {
            [buffer appendString:@" "];
            [buffer appendString:key];
            [buffer appendString:@"=\""];
            [[MPSEWSHandler handlerForClass:[h cls]] writeXmlInto:buffer for:v withTag:nil];
            [buffer appendString:@"\""];
        }
    }
    [buffer appendString:@">"];

    if (contentHandlerClass) {
        id v = [object valueForKey:@"simpleContent"];
        if (v) {
            [[MPSEWSHandler handlerForClass:contentHandlerClass] writeXmlInto:buffer for:v withTag:nil];
        }
    }

    for (NSString* key in keys)
    {
        MPSEWSHandlerValue* h = [elements objectForKey:key];

        if ([h isList])
        {
            id v = [object valueForKey:[h prop]];
            if (v)
            {
                for (id e in v) {
                    [[MPSEWSHandler handlerForClass:[h cls]] writeXmlInto:buffer for:e withTag:key];
                }
            }
        }
        else
        {
            id v = [object valueForKey:[h prop]];
            if (v)
            {
                [[MPSEWSHandler handlerForClass:[h cls]] writeXmlInto:buffer for:v withTag:key];
            }
        }
    }
    [buffer appendString:@"</"];
    [buffer appendString:tag];
    [buffer appendString:@">"];
}


@end

