#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfGroupedItemsType.h"
#import "../types/MPSEWSGroupedItemsType.h"


@implementation MPSEWSArrayOfGroupedItemsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfGroupedItemsType class]];

    [handler listProperty  : @"groupedItems"
             isNonEmpty    : FALSE
             useSelector   : @"addGroupedItems"
             withNamespace : 't'
             withXmlTag    : @"GroupedItems"
             withHandler   : [MPSEWSGroupedItemsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSArrayOfGroupedItemsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfGroupedItemsType: GroupedItems=%@", _groupedItems];
}

- (void) addGroupedItems:(MPSEWSGroupedItemsType*) elem
{
    if (![self groupedItems]) {
        [self setGroupedItems:[[NSMutableArray<MPSEWSGroupedItemsType*> alloc] init]];
    }
    [_groupedItems addObject:elem];
}

@end

