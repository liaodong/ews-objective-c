#import "EWSSimpleTypeHandler.h"


@implementation EWSSimpleTypeHandler 

- (id)initWithClass: (Class)cls
{
    return [super initWithClass:cls];
}

- (id) construct
{
    return nil;
}
 
- (id) constructWithAttributes: (NSDictionary *)attributes
{
    return [self construct];
}
 
- (id) updateObject:(id)obj withCharacters:(NSString*)s
{
    return nil;
}
 
- (id) updateObject:(id)obj forKey:(NSString*)tag withValue:(id)v
{
    return nil;
}
 
- (id<EWSHandlerProtocol>) handlerForElement: (NSString *) tag
{
    return nil;
}
 
- (void) writeXmlInto:(NSMutableString*)buffer for:(id) object withIndentationDepth:(int) depth
{
}
 
- (BOOL) isInline
{
    return TRUE;
}

@end
