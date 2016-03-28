#import <Foundation/Foundation.h>

#import "MPSEWSSubscriptionIdType.h"
@implementation MPSEWSSubscriptionIdType /* SimpleType */

+ (void) initialize
{
    [[[MPSEWSSubscriptionIdType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSSubscriptionIdType class]];
    return self;
}

- (id) initWithClass:(Class) cls
{
    self = [super initWithClass:cls];
    return self;
}

@end

