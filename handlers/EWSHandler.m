#import "EWSHandler.h"


@implementation EWSHandler
{
    Class clazz;
}

static NSMutableDictionary* _handlers = nil;

+ (void) initialize
{
    if (_handlers == nil) {
        _handlers = [[NSMutableDictionary alloc] initWithCapacity: 1024];
    }
}

+ (NSMutableDictionary*) handlers
{
    [self initialize];
    return _handlers;
}

- (id) initWithClass: (Class) cls
{
    self = [super init];
    clazz = cls;
    return self;
}

- (void) register
{
    [_handlers setObject:self forKey: [clazz className]];
}

+ (id<EWSHandlerProtocol>) handlerForClass: (Class) cls
{
    NSMutableDictionary* handlers = [self handlers];
    if (![handlers objectForKey: cls]) {
        [cls initialize];
    }
    return [[self handlers] objectForKey: [cls className]];
}

- (id) constructWithAttributes: (NSDictionary *)attributes
{
    return nil;
}

- (id) updateObject:(id)obj forKey:(NSString*)tag withValue:(id)v
{
    return nil;
}

- (id) updateObject:(id)obj withCharacters:(NSString*) s
{
    return nil;
}

- (id<EWSHandlerProtocol>) handlerForElement: (NSString *) tag
{
    return nil;
}

- (void) writeXmlInto:(NSMutableString*)buffer for:(id) object withIndentation:(NSMutableString*) indent
{
}

@end

