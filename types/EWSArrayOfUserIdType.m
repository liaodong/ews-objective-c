
#import "EWSArrayOfUserIdType.h"


@implementation EWSArrayOfUserIdType 

+ (void) initialize
{
    EWSArrayTypeHandler* handler = [[EWSArrayOfUserIdType alloc] initWithClass:[EWSArrayOfUserIdType class]];

    [handler elementName : @"UserId"
             withHandler : [EWSUserIdType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

@end

