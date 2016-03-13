
#import "EWSNonEmptyArrayOfGroupIdentifiersType.h"


@implementation EWSNonEmptyArrayOfGroupIdentifiersType 

+ (void) initialize
{
    EWSArrayTypeHandler* handler = [[EWSNonEmptyArrayOfGroupIdentifiersType alloc] initWithClass:[EWSNonEmptyArrayOfGroupIdentifiersType class]];

    [handler elementName   : @"GroupIdentifier"
             withNamespace : 't'             withHandler   : [EWSSidAndAttributesType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

@end

