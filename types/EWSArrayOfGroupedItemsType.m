#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSArrayOfGroupedItemsType.h"
#import "../types/EWSGroupedItemsType.h"


@implementation EWSArrayOfGroupedItemsType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSArrayOfGroupedItemsType class]];

    [handler listProperty  : @"groupedItems"
             isNonEmpty    : FALSE
             useSelector   : @"addGroupedItems"
             withNamespace : 't'
             withXmlTag    : @"GroupedItems"
             withHandler   : [EWSGroupedItemsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSArrayOfGroupedItemsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfGroupedItemsType: GroupedItems=%@", _groupedItems];
}

- (void) addGroupedItems:(EWSGroupedItemsType*) elem
{
    if (![self groupedItems]) {
        [self setGroupedItems:[[NSMutableArray<EWSGroupedItemsType*> alloc] init]];
    }
    [_groupedItems addObject:elem];
}

@end

