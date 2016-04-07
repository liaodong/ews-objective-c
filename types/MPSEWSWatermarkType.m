#import <Foundation/Foundation.h>

#import "MPSEWSWatermarkType.h"
@implementation MPSEWSWatermarkType /* SimpleType */

+ (void) initialize
{
    [[[MPSEWSWatermarkType alloc] init] register];
}

+ (BOOL) isValid:(NSString*)val forVersion:(MPSEWSExchangeVersion) ver
{
    return [MPSEWSNonEmptyStringType isValid:val forVersion:ver];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSWatermarkType class]];
    return self;
}

- (id) initWithClass:(Class) cls
{
    self = [super initWithClass:cls];
    return self;
}

@end

