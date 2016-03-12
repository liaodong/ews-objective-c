
#import "EWSArrayOfDelegateUserType.h"


@implementation EWSArrayOfDelegateUserType 

+ (void) initialize
{
    EWSArrayTypeHandler* handler = [[EWSArrayOfDelegateUserType alloc] initWithClass:[EWSArrayOfDelegateUserType class]];

    [handler elementName : @"DelegateUser"
             withHandler : [EWSDelegateUserType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

@end

