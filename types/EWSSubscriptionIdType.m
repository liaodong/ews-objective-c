#import <Foundation/Foundation.h>

#import "EWSSubscriptionIdType.h"
@implementation EWSSubscriptionIdType /* SimpleType */

+ (void) initialize
{
    [[[EWSSubscriptionIdType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSSubscriptionIdType class]];
    return self;
}

- (id) initWithClass:(Class) cls
{
    self = [super initWithClass:cls];
    return self;
}

@end

