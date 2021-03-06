#import "MPSEWSDateTypeHandler.h"


@implementation MPSEWSDateTypeHandler 

+ (void) initialize
{
    [[[MPSEWSDateTypeHandler alloc] init] register];
}
+ (BOOL) isValid:(NSString*) val forVersion:(MPSEWSExchangeVersion) ver
{
    (void) val;
    return TRUE;
}

- (id)initWithClass: (Class)cls
{
    return [super initWithClass:cls];
}

- (id) init
{
    return [super initWithClass:[MPSEWSDateTypeHandler class]];
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
