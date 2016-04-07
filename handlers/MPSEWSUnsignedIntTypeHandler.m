#import "MPSEWSUnsignedIntTypeHandler.h"


@implementation MPSEWSUnsignedIntTypeHandler 

+ (void) initialize
{
    [[[MPSEWSUnsignedIntTypeHandler alloc] init] register];
}
+ (BOOL) isValid:(NSNumber*) val forVersion:(MPSEWSExchangeVersion) ver
{
    (void) val;
    return TRUE; // FIX ME
}

- (id)initWithClass: (Class)cls
{
    return [super initWithClass:cls];
}

- (id) init
{
    return [super initWithClass:[MPSEWSUnsignedIntTypeHandler class]];
}

- (NSNumber*) construct
{
    return nil;
}

- (NSNumber*) updateObject:(NSNumber*)obj withCharacters:(NSString*)s
{
    s = [s stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return s && [s length] > 1 ? [NSNumber numberWithUnsignedInt:[s intValue]] : obj;
}
 
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSNumber*) object
{
    NSString* s = [[NSString alloc] initWithFormat:@"%ld", [object integerValue]];
    [buffer appendString:s];
}
 

@end
