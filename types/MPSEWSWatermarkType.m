#import <Foundation/Foundation.h>

#import "MPSEWSWatermarkType.h"
@implementation MPSEWSWatermarkType /* SimpleType */

+ (void) initialize
{
    [[[MPSEWSWatermarkType alloc] init] register];
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

