#import "EWSTimeTypeHandler.h"


@implementation EWSTimeTypeHandler 

+ (void) initialize
{
    [[[EWSTimeTypeHandler alloc] init] register];
}

- (id)initWithClass: (Class)cls
{
    return [super initWithClass:cls];
}

- (id) init
{
    return [super initWithClass:[EWSTimeTypeHandler class]];
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
 
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString*) object
{
    [buffer appendString:object];
}
 

@end
