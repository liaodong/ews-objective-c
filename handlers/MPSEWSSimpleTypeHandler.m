#import "MPSEWSSimpleTypeHandler.h"


@implementation MPSEWSSimpleTypeHandler 


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
 
- (id) updateObject:(id)obj forKey:(NSString*)tag namespace:(char)ns  withValue:(id)v
{
    return nil;
}
 
- (id<MPSEWSHandlerProtocol>) handlerForElement: (NSString *) tag namespace:(char) ns
{
    return nil;
}

- (void) writeXmlInto:(NSMutableString*)buffer for:(id) object
{
    
}

- (void) writeXmlInto:(NSMutableString*)buffer for:(id) object withIndentation:(NSMutableString*) indent
{
    [buffer appendString:@">"];
    [self writeXmlInto:buffer for:object];
}
 
- (BOOL) isInline
{
    return TRUE;
}

@end
