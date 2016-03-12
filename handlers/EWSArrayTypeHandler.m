#import "EWSArrayTypeHandler.h"


@implementation EWSArrayTypeHandler
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

- (NSMutableArray*) updateObject:(NSMutableArray*)obj forKey:(NSString*)tag withValue:(id)v
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

- (void) elementName :(NSString *) tag
         withHandler :(Class) cls
{
    [handlers setObject:cls forKey:tag];
    [elements setObject:tag forKey:[cls className]];
}

- (id<EWSHandlerProtocol>) handlerForElement: (NSString *) tag
{
    return [EWSHandler handlerForClass:[handlers objectForKey: tag]];
}

- (void) writeXmlInto:(NSMutableString*)buffer for:(NSArray*) array withIndentation:(NSMutableString*) indent
{
    SEL handlerClass = @selector(handlerClass);

    bool hasElements = FALSE;

    [buffer appendString:@">"];
    if (indent) {
        [indent appendString:@"  "];
    }
    for (NSObject* obj in array)
    {
        Class cls = nil;
        if ([obj respondsToSelector:handlerClass]) {
            cls = [obj performSelector:handlerClass];
        }

        NSString* key = cls ? [elements objectForKey:[cls className]] : [self tag];

        if (!key) continue;

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
        [[EWSHandler handlerForClass:[handlers objectForKey:key]] writeXmlInto:buffer for:obj withIndentation:indent];
        [buffer appendString:@"</"];
        [buffer appendString:key];
        [buffer appendString:@">"];
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

