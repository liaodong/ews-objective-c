#import "MPSEWSArrayTypeHandler.h"


@implementation MPSEWSArrayTypeHandler
{
    Class clazz;

    NSMutableDictionary* handlers;
    NSMutableDictionary* elements;
}

- (id) initWithClass: (Class) c
{
    self = [super initWithClass:c];

    clazz = c;

    elements = [[NSMutableDictionary alloc] initWithCapacity: 32];
    handlers = [[NSMutableDictionary alloc] initWithCapacity: 32];
    return self;
}

- (NSMutableArray*) constructWithAttributes: (NSDictionary *)attrs
{
    return [[NSMutableArray alloc] init];
}

- (NSMutableArray*) updateObject:(NSMutableArray*)obj forKey:(NSString*)tag namespace:(char)ns withValue:(id)v
{
    [obj addObject:v];
    return obj;
}

- (id) updateObject:(id)obj withCharacters:(NSString*) s
{
    return obj;
}


- (NSString*) tag
{
    if ([handlers count] != 1) return nil;
    for (NSString* tag in handlers) {
        return tag;
    }
    return nil;
}

- (void) elementName  :(NSString *) tag
         withNamespace: (char) ns
         withHandler  :(Class) cls
{
    tag = [NSString stringWithFormat:@"%c:%@", ns, tag];

    [handlers setObject:cls forKey:tag];
    [elements setObject:tag forKey:NSStringFromClass(cls)];
}

- (id<MPSEWSHandlerProtocol>) handlerForElement: (NSString *) tag namespace: (char) ns
{
    tag = [NSString stringWithFormat:@"%c:%@", ns, tag];
    return [MPSEWSHandler handlerForClass:[handlers objectForKey: tag]];
}

- (void) writeXmlInto:(NSMutableString*)buffer for:(NSArray*) array withTag:(NSString*) outerTag
{
    SEL handlerClass = @selector(handlerClass);

    [buffer appendString:@"<"];
    [buffer appendString:outerTag];
    [buffer appendString:@">"];
    for (NSObject* obj in array)
    {
        Class cls = nil;
        if ([obj respondsToSelector:handlerClass]) {
            //cls = [obj performSelector:handlerClass];
            IMP imp = [obj methodForSelector:handlerClass];
            Class (*func)(id, SEL) = (void*) imp;
            cls = func (obj, handlerClass);
        }

        NSString* key = cls ? [elements objectForKey:NSStringFromClass(cls)] : [self tag];
        if (!key) continue;

        [[MPSEWSHandler handlerForClass:[handlers objectForKey:key]] writeXmlInto:buffer for:obj withTag:key];
    }
    [buffer appendString:@"</"];
    [buffer appendString:outerTag];
    [buffer appendString:@">"];
}


@end

