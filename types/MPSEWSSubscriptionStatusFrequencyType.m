#import <Foundation/Foundation.h>

#import "MPSEWSSubscriptionStatusFrequencyType.h"
@implementation MPSEWSSubscriptionStatusFrequencyType /* SimpleType */

static int minInclusive = 1;

static int maxInclusive = 1440;

+ (void) initialize
{
    [[[MPSEWSSubscriptionStatusFrequencyType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSSubscriptionStatusFrequencyType class]];
    return self;
}

- (id) initWithClass:(Class) cls
{
    self = [super initWithClass:cls];
    return self;
}

- (NSNumber *) construct
{
    return nil;
}

- (NSNumber *) updateObject:(NSNumber *)obj withCharacters:(NSString*) s
{
    s = [s stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return [s length] > 0 ? [NSNumber numberWithInteger:[s integerValue]] : obj;
}

- (void) writeXmlInto:(NSMutableString*)buffer for:(NSNumber *) object
{
    NSNumber* obj = ((NSNumber*) object);
    NSInteger val = [obj integerValue];
    NSAssert(val >= minInclusive, @"Value is smaller than min");
    NSAssert(val <= maxInclusive, @"Value is bigger than min");
    [buffer appendFormat:@"%ld", val];
}

@end

