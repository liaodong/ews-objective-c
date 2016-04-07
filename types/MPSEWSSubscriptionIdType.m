#import <Foundation/Foundation.h>

#import "MPSEWSSubscriptionIdType.h"
@implementation MPSEWSSubscriptionIdType /* SimpleType */

+ (void) initialize
{
    [[[MPSEWSSubscriptionIdType alloc] init] register];
}

+ (BOOL) isValid:(NSString*)val forVersion:(MPSEWSExchangeVersion) ver
{
    return [MPSEWSNonEmptyStringType isValid:val forVersion:ver];
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

