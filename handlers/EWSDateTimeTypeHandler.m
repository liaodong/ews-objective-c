#import "EWSDateTimeTypeHandler.h"


@implementation EWSDateTimeTypeHandler 

- (id)initWithClass: (Class)cls
{
    return [super initWithClass:cls];
}

- (id) init
{
    return [super initWithClass:[EWSDateTimeTypeHandler class]];
}

- (NSString*) construct
{
    return [[NSMutableString alloc] init];
}
 
- (NSString*) updateObject:(NSString*)obj withCharacters:(NSString*)s
{
    NSMutableString* str = (NSMutableString*) obj;
    [str appendString:s];
    return obj;
}
 
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString*) object withIndentation:(NSMutableString*) indent
{
    [buffer appendString:object];
}
 

@end
