#import <Foundation/Foundation.h>

#import "EWSWatermarkType.h"
@implementation EWSWatermarkType /* SimpleType */

+ (void) initialize
{
    [[[EWSWatermarkType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSWatermarkType class]];
    return self;
}

- (id) initWithClass:(Class) cls
{
    self = [super initWithClass:cls];
    return self;
}

@end

