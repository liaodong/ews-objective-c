#import "MPSEWSHandler.h"


@implementation MPSEWSHandler
{
    Class clazz;
}

static MPSEWSHandler* _noop = nil;
static NSMutableDictionary* _handlers = nil;

+ (void) initialize
{
    if (_handlers == nil) {
        _handlers = [[NSMutableDictionary alloc] initWithCapacity: 1024];
        [MPSEWSHandler noop];
    }
}

+ (MPSEWSHandler*) noop
{
    if (_noop == nil) {
        _noop = [[MPSEWSHandler alloc] init];
    }
    return _noop;
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

- (id) init
{
    return [super init];
}


- (void) register
{
    [_handlers setObject:self forKey: [clazz className]];
}

+ (id<MPSEWSHandlerProtocol>) handlerForClass: (Class) cls
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

- (id) updateObject:(id)obj forKey:(NSString*)tag namespace:(char) ns withValue:(id)v
{
    return nil;
}

- (id) updateObject:(id)obj withCharacters:(NSString*) s
{
    return nil;
}

- (id<MPSEWSHandlerProtocol>) handlerForElement: (NSString *) tag namespace : (char) ns
{
    return nil;
}

- (void) writeXmlInto:(NSMutableString*)buffer for:(id) object withIndentation:(NSMutableString*) indent
{
}

@end

