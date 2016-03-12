#import "EWSIntegerTypeHandler.h"


@implementation EWSIntegerTypeHandler 

- (id)initWithClass: (Class)cls
{
    return [super initWithClass:cls];
}

- (id) init
{
    return [super initWithClass:[EWSIntegerTypeHandler class]];
}

- (NSNumber*) construct
{
    return nil;
}

- (NSNumber*) updateObject:(NSNumber*)obj withCharacters:(NSString*)s
{
    s = [s stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return s && [s length] > 1 ? [NSNumber numberWithInteger:[s intValue]] : obj;
}
 
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSNumber*) object withIndentation:(NSMutableString*) indent
{
    NSString* s = [[NSString alloc] initWithFormat:@"%ld", [object integerValue]];
    [buffer appendString:s];
}
 

@end
