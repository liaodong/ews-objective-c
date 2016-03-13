
#import "EWSArrayOfWorkingPeriod.h"


@implementation EWSArrayOfWorkingPeriod 

+ (void) initialize
{
    EWSArrayTypeHandler* handler = [[EWSArrayOfWorkingPeriod alloc] initWithClass:[EWSArrayOfWorkingPeriod class]];

    [handler elementName   : @"WorkingPeriod"
             withNamespace : 't'             withHandler   : [EWSWorkingPeriod class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

@end

