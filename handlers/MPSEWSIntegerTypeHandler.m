#import "MPSEWSIntegerTypeHandler.h"


@implementation MPSEWSIntegerTypeHandler 

+ (void) initialize
{
    [[[MPSEWSIntegerTypeHandler alloc] init] register];
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
    return [super initWithClass:[MPSEWSIntegerTypeHandler class]];
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
 
- (void) writeXmlInto:(NSMutableString*)buffer for:(NSNumber*) object
{
    NSString* s = [[NSString alloc] initWithFormat:@"%ld", [object integerValue]];
    [buffer appendString:s];
}
 

@end
