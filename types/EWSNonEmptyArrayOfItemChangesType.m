
#import "EWSNonEmptyArrayOfItemChangesType.h"


@implementation EWSNonEmptyArrayOfItemChangesType 

+ (void) initialize
{
    EWSArrayTypeHandler* handler = [[EWSNonEmptyArrayOfItemChangesType alloc] initWithClass:[EWSNonEmptyArrayOfItemChangesType class]];

    [handler elementName   : @"ItemChange"
             withNamespace : 't'             withHandler   : [EWSItemChangeType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

@end

