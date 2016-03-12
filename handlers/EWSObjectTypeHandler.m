#import "EWSObjectTypeHandler.h"


@interface EWSHandlerValue : NSObject

@property (retain) NSString* prop;
@property (retain) Class     cls;
@property (retain) NSString* sel;

- (SEL) selector;

- (id) initProperty:(NSString*) property withHandlerKey: (Class) cls;
- (id) initProperty:(NSString*) property withHandlerKey: (Class) cls withSelector: (NSString*) sel;
@end

@implementation EWSHandlerValue
{
    SEL selector;
}
- (id) initProperty:(NSString*) property withHandlerKey: (Class)cls
{
    self = [super init];

    [self setProp: property];
    [self setCls:  cls];

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
        selector = NSSelectorFromString([self sel]);
    }
    return selector;
}

- (BOOL) isList
{
    return selector ? TRUE : FALSE;
}

@end


@implementation EWSObjectTypeHandler
{
    Class clazz;

    NSMutableArray*      keys;
    NSMutableDictionary* elements;

    NSMutableDictionary* attributes;
}

- (id) initWithClass: (Class) c
{
    self = [super initWithClass:c];

    clazz = c;

    keys      = [[NSMutableArray alloc] initWithCapacity: 32];
    elements  = [[NSMutableDictionary alloc] initWithCapacity: 32];

    return self;
}

- (id) constructWithAttributes: (NSDictionary *)attrs
{
    id v = [[clazz alloc] init];

    for (NSString* key in attrs)
    {
        EWSHandlerValue* h = [attributes objectForKey:key];
        if (h) {
            id<EWSHandlerProtocol> handler = [EWSHandler handlerForClass:[h cls]];

            id obj = [handler constructWithAttributes:nil];
            obj = [handler updateObject:obj withCharacters:[attrs objectForKey:key]];
            [obj setValue:obj forKey:[h prop]];
        }
    }
    return v;
}

- (id) updateObject:(id)obj forKey:(NSString*)tag withValue:(id)v
{
    EWSHandlerValue* h = [elements objectForKey:tag];

    if ([h sel]) {
        [obj performSelector: [h selector] withObject:v];
    }
    else {
        [obj setValue:v forKey:[h prop]];
    }
    return obj;
}

- (id) updateObject:(id)obj withCharacters:(NSString*) s
{
    return obj;
}


- (void) property   :(NSString *) property
         isRequired :(BOOL) required
         withXmlTag :(NSString*) tag
         withHandler:(Class) cls
{
    [keys     addObject:tag];
    [elements setObject:[[EWSHandlerValue alloc] initProperty: property withHandlerKey: cls] forKey:tag];
}

- (void) property    :(NSString *) property
         isRequired  :(BOOL) required
         withAttrTag :(NSString*) tag
         withHandler :(Class) cls
{
    [attributes setObject:[[EWSHandlerValue alloc] initProperty: property withHandlerKey: cls] forKey:tag];
}

- (void) listProperty :(NSString *) property
         isNonEmpty   :(BOOL) required
         useSelector  :(NSString*) method
         withXmlTag   :(NSString*) tag
         withHandler  :(Class) cls
{
    [keys     addObject:tag];
    [elements setObject:[[EWSHandlerValue alloc] initProperty: property withHandlerKey:cls withSelector:method] forKey:tag];
}

- (id<EWSHandlerProtocol>) handlerForElement: (NSString *) tag
{
    return [EWSHandler handlerForClass:[[elements objectForKey: tag] cls]];
}

- (void) writeXmlInto:(NSMutableString*)buffer for:(id) object withIndentation:(NSMutableString*) indent
{
    bool hasElements = FALSE;

    for (NSString* key in attributes)
    {
        EWSHandlerValue* h = [attributes objectForKey:key];
        id v = [object valueForKey:[h prop]];
        if (v)
        {
            [buffer appendString:@" "];
            [buffer appendString:key];
            [buffer appendString:@"=\""];
            [[EWSHandler handlerForClass:[h cls]] writeXmlInto:buffer for:v withIndentation:indent];
            [buffer appendString:@"\""];
        }
    }
    [buffer appendString:@">"];

    if (indent) {
        [indent appendString:@"  "];
    }

    for (NSString* key in keys)
    {
        EWSHandlerValue* h = [elements objectForKey:key];

        if ([h isList])
        {
            id v = [object valueForKey:[h prop]];
            if (v)
            {
                for (id e in v) {
                    if (!hasElements) {
                        hasElements = TRUE;
                    }
                    if (indent)
                    {
                        [buffer appendString:@"\n"];
                        [buffer appendString:indent];
                    }
                    [buffer appendString:@"<"];
                    [buffer appendString:key];
                    [[EWSHandler handlerForClass:[h cls]] writeXmlInto:buffer for:e withIndentation:indent];
                    [buffer appendString:@"</"];
                    [buffer appendString:key];
                    [buffer appendString:@">"];
                }
            }
        }
        else
        {
            id v = [object valueForKey:[h prop]];
            if (v)
            {
                if (!hasElements) {
                    hasElements = TRUE;
                }
                if (indent)
                {
                    [buffer appendString:@"\n"];
                    [buffer appendString:indent];
                }
                [buffer appendString:@"<"];
                [buffer appendString:key];
                [[EWSHandler handlerForClass:[h cls]] writeXmlInto:buffer for:v withIndentation:indent];
                [buffer appendString:@"</"];
                [buffer appendString:key];
                [buffer appendString:@">"];
            }
        }
    }
    if (indent) {
        NSRange range;
        range.location = [indent length] - 2;
        range.length   = 2;
        [indent deleteCharactersInRange:range];
    }

    if (indent && hasElements)
    {

        [buffer appendString:@"\n"];
        [buffer appendString:indent];
    }
}


@end

