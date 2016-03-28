#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSNonEmptyArrayOfBaseItemIdsType.h"
#import "../types/EWSItemIdType.h"
#import "../types/EWSOccurrenceItemIdType.h"
#import "../types/EWSRecurringMasterItemIdType.h"


@implementation EWSNonEmptyArrayOfBaseItemIdsType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSNonEmptyArrayOfBaseItemIdsType class]];

    [handler property      : @"itemId"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"ItemId"
             withHandler   : [EWSItemIdType class]];

    [handler property      : @"occurrenceItemId"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"OccurrenceItemId"
             withHandler   : [EWSOccurrenceItemIdType class]];

    [handler property      : @"recurringMasterItemId"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"RecurringMasterItemId"
             withHandler   : [EWSRecurringMasterItemIdType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSNonEmptyArrayOfBaseItemIdsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfBaseItemIdsType: ItemId=%@ OccurrenceItemId=%@ RecurringMasterItemId=%@", _itemId, _occurrenceItemId, _recurringMasterItemId];
}

@end

