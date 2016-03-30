#import "MPSEWSDoubleTypeHandler.h"


@implementation MPSEWSDoubleTypeHandler 

+ (void) initialize
{
    [[[MPSEWSDoubleTypeHandler alloc] init] register];
}
+ (BOOL) isValid:(NSNumber*) val
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
    return [super initWithClass:[MPSEWSDoubleTypeHandler class]];
}

- (NSNumber*) construct
{
    return nil;
}

- (NSNumber*) updateObject:(NSNumber*)obj withCharacters:(NSString*)s
{
    s = [s stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return s && [s length] > 1 ? [NSNumber numberWithDouble:[s intValue]] : obj;
}
 
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSNumber*) object
{
    NSString* s = [[NSString alloc] initWithFormat:@"%ld", [object integerValue]];
    [buffer appendString:s];
}
 

@end
