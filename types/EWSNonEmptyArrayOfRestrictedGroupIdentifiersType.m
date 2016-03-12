
#import "EWSNonEmptyArrayOfRestrictedGroupIdentifiersType.h"


@implementation EWSNonEmptyArrayOfRestrictedGroupIdentifiersType 

+ (void) initialize
{
    EWSArrayTypeHandler* handler = [[EWSNonEmptyArrayOfRestrictedGroupIdentifiersType alloc] initWithClass:[EWSNonEmptyArrayOfRestrictedGroupIdentifiersType class]];

    [handler elementName : @"RestrictedGroupIdentifier"
             withHandler : [EWSSidAndAttributesType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

@end

