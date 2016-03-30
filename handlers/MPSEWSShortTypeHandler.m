#import "MPSEWSShortTypeHandler.h"


@implementation MPSEWSShortTypeHandler 

+ (void) initialize
{
    [[[MPSEWSShortTypeHandler alloc] init] register];
}
+ (BOOL) isValid:(NSNumber*)val
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
    return [super initWithClass:[MPSEWSShortTypeHandler class]];
}

- (NSNumber*) construct
{
    return nil;
}

- (NSNumber*) updateObject:(NSNumber*)obj withCharacters:(NSString*)s
{
    s = [s stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return s && [s length] > 1 ? [NSNumber numberWithShort:[s intValue]] : obj;
}
 
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSNumber*) object
{
    NSString* s = [[NSString alloc] initWithFormat:@"%ld", [object integerValue]];
    [buffer appendString:s];
}
 

@end
