#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSNonEmptyArrayOfBaseItemIdsType.h"
#import "../types/MPSEWSItemIdType.h"
#import "../types/MPSEWSOccurrenceItemIdType.h"
#import "../types/MPSEWSRecurringMasterItemIdType.h"


@implementation MPSEWSNonEmptyArrayOfBaseItemIdsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSNonEmptyArrayOfBaseItemIdsType class]];

    [handler property      : @"itemId"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"ItemId"
             withHandler   : [MPSEWSItemIdType class]];

    [handler property      : @"occurrenceItemId"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"OccurrenceItemId"
             withHandler   : [MPSEWSOccurrenceItemIdType class]];

    [handler property      : @"recurringMasterItemId"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"RecurringMasterItemId"
             withHandler   : [MPSEWSRecurringMasterItemIdType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSNonEmptyArrayOfBaseItemIdsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfBaseItemIdsType: ItemId=%@ OccurrenceItemId=%@ RecurringMasterItemId=%@", _itemId, _occurrenceItemId, _recurringMasterItemId];
}

@end

