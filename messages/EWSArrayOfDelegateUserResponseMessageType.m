
#import "EWSArrayOfDelegateUserResponseMessageType.h"


@implementation EWSArrayOfDelegateUserResponseMessageType 

+ (void) initialize
{
    EWSArrayTypeHandler* handler = [[EWSArrayOfDelegateUserResponseMessageType alloc] initWithClass:[EWSArrayOfDelegateUserResponseMessageType class]];

    [handler elementName   : @"DelegateUserResponseMessageType"
             withNamespace : 'm'             withHandler   : [EWSDelegateUserResponseMessageType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

@end

