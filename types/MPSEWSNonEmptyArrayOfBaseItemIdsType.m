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

    [handler listProperty  : @"itemId"
             useSelector   : @"addItemId"
             withNamespace : 't'
             withXmlTag    : @"ItemId"
             withHandler   : [MPSEWSItemIdType class]];

    [handler listProperty  : @"occurrenceItemId"
             useSelector   : @"addOccurrenceItemId"
             withNamespace : 't'
             withXmlTag    : @"OccurrenceItemId"
             withHandler   : [MPSEWSOccurrenceItemIdType class]];

    [handler listProperty  : @"recurringMasterItemId"
             useSelector   : @"addRecurringMasterItemId"
             withNamespace : 't'
             withXmlTag    : @"RecurringMasterItemId"
             withHandler   : [MPSEWSRecurringMasterItemIdType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfBaseItemIdsType*) val
{   (void) val;
    if ([val itemId]) {
        for (MPSEWSItemIdType* obj in [val itemId]) {
            if (![MPSEWSItemIdType isValid:obj]) return FALSE;
        }
    }
    if ([val occurrenceItemId]) {
        for (MPSEWSOccurrenceItemIdType* obj in [val occurrenceItemId]) {
            if (![MPSEWSOccurrenceItemIdType isValid:obj]) return FALSE;
        }
    }
    if ([val recurringMasterItemId]) {
        for (MPSEWSRecurringMasterItemIdType* obj in [val recurringMasterItemId]) {
            if (![MPSEWSRecurringMasterItemIdType isValid:obj]) return FALSE;
        }
    }
    return TRUE;
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

- (void) addItemId:(MPSEWSItemIdType*) elem
{
    if (![self itemId]) {
        [self setItemId:[[NSMutableArray<MPSEWSItemIdType*> alloc] init]];
    }
    [_itemId addObject:elem];
}

- (void) addOccurrenceItemId:(MPSEWSOccurrenceItemIdType*) elem
{
    if (![self occurrenceItemId]) {
        [self setOccurrenceItemId:[[NSMutableArray<MPSEWSOccurrenceItemIdType*> alloc] init]];
    }
    [_occurrenceItemId addObject:elem];
}

- (void) addRecurringMasterItemId:(MPSEWSRecurringMasterItemIdType*) elem
{
    if (![self recurringMasterItemId]) {
        [self setRecurringMasterItemId:[[NSMutableArray<MPSEWSRecurringMasterItemIdType*> alloc] init]];
    }
    [_recurringMasterItemId addObject:elem];
}

@end

