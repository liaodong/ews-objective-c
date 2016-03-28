#import "MPSEWSDateTimeTypeHandler.h"


@implementation MPSEWSDateTimeTypeHandler 

+ (void) initialize
{
    [[[MPSEWSDateTimeTypeHandler alloc] init] register];
}

- (id)initWithClass: (Class)cls
{
    return [super initWithClass:cls];
}

- (id) init
{
    return [super initWithClass:[MPSEWSDateTimeTypeHandler class]];
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
