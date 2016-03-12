
#import "EWSNonEmptyArrayOfGroupIdentifiersType.h"


@implementation EWSNonEmptyArrayOfGroupIdentifiersType 

+ (void) initialize
{
    EWSArrayTypeHandler* handler = [[EWSNonEmptyArrayOfGroupIdentifiersType alloc] initWithClass:[EWSNonEmptyArrayOfGroupIdentifiersType class]];

    [handler elementName : @"GroupIdentifier"
             withHandler : [EWSSidAndAttributesType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

@end

