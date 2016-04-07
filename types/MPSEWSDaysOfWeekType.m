#import <Foundation/Foundation.h>

#import "MPSEWSDaysOfWeekType.h"
@implementation MPSEWSDaysOfWeekType 

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:@"Sunday", @"Monday", @"Tuesday", @"Wednesday", @"Thursday", @"Friday", @"Saturday", @"Day", @"Weekday", @"WeekendDay", nil];
    [[[MPSEWSDaysOfWeekType alloc] init] register];
}

+ (BOOL) isValid:(NSArray<NSString*>*) val forVersion:(MPSEWSExchangeVersion) ver
{
    for (NSString* v in val)
    {
        if (![enumerations containsObject:v]) return FALSE;
    }
    return TRUE;
}

- (id) init
{
    self = [super initWithClass:[MPSEWSDaysOfWeekType class] andValues:enumerations];
    return self;
}

- (id) initWithClass:(Class) cls
{
    self = [super initWithClass:cls andValues:enumerations];
    return self;
}

@end

