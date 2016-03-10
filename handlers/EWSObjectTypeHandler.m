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

@end


@implementation EWSObjectTypeHandler
{
    Class cls;
    NSMutableDictionary* handlers;
}

- (id) initWithClass: (Class) c
{
    self = [super initWithClass:c];

    cls = c;
    handlers  = [[NSMutableDictionary alloc] initWithCapacity: 32];
    return self;
}

- (id) constructWithAttributes: (NSDictionary *)attributes
{
    id v = [[cls alloc] init];
    for (NSString* key in attributes)
    {
      [self updateObject:v forKey:key withValue:[attributes objectForKey:key]];
    }
    return v;
}

- (id) updateObject:(id)obj forKey:(NSString*)tag withValue:(id)v
{
    EWSHandlerValue* h = [handlers objectForKey:tag];

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

- (void) property:(NSString *) property
                hasXmlElementTag    : (NSString*) tag
                withDelegateClassKey: (Class) c
{
    [handlers setObject:[[EWSHandlerValue alloc] initProperty: property withHandlerKey: c] forKey:tag];
}
- (void) property:(NSString *) property
                hasXmlElementTag    :  (NSString*) tag
                withDelegateClassKey: (Class) c
                useSelector         : (NSString *) sel
{
    [handlers setObject:[[EWSHandlerValue alloc] initProperty: property withHandlerKey: c withSelector:sel] forKey:tag];
}


- (id<EWSHandlerProtocol>) handlerForElement: (NSString *) tag
{
    return [handlers objectForKey: tag];
}


- (void) writeXmlInto:(NSMutableString*)buffer for:(id) object withIndentationDepth:(int) depth
{
}

- (BOOL) isInline
{
    return FALSE;
}


@end

