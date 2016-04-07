#import "MPSEWSStringTypeHandler.h"


@implementation MPSEWSStringTypeHandler 


+ (void) initialize
{
    [[[MPSEWSStringTypeHandler alloc] init] register];
}
+ (BOOL) isValid:(NSString*) val  forVersion:(MPSEWSExchangeVersion) ver
{
    return val != nil;
}

- (id)initWithClass: (Class)cls
{
    return [super initWithClass:cls];
}

- (id) init
{
    return [super initWithClass:[MPSEWSStringTypeHandler class]];
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
 
- (void) writeXmlInto:(NSMutableString*)buffer for:(id) object
{
    [buffer appendString:object];
}
 

@end
