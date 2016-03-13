
#import "EWSArrayOfGroupedItemsType.h"


@implementation EWSArrayOfGroupedItemsType 

+ (void) initialize
{
    EWSArrayTypeHandler* handler = [[EWSArrayOfGroupedItemsType alloc] initWithClass:[EWSArrayOfGroupedItemsType class]];

    [handler elementName   : @"GroupedItems"
             withNamespace : 't'             withHandler   : [EWSGroupedItemsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

@end

