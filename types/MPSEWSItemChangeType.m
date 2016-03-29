#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSItemChangeType.h"
#import "../types/MPSEWSItemIdType.h"
#import "../types/MPSEWSNonEmptyArrayOfItemChangeDescriptionsType.h"
#import "../types/MPSEWSOccurrenceItemIdType.h"
#import "../types/MPSEWSRecurringMasterItemIdType.h"


@implementation MPSEWSItemChangeType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSItemChangeType class]];

    [handler property      : @"itemId"
             withNamespace : 't'
             withXmlTag    : @"ItemId"
             withHandler   : [MPSEWSItemIdType class]];

    [handler property      : @"occurrenceItemId"
             withNamespace : 't'
             withXmlTag    : @"OccurrenceItemId"
             withHandler   : [MPSEWSOccurrenceItemIdType class]];

    [handler property      : @"recurringMasterItemId"
             withNamespace : 't'
             withXmlTag    : @"RecurringMasterItemId"
             withHandler   : [MPSEWSRecurringMasterItemIdType class]];

    [handler property      : @"updates"
             withNamespace : 't'
             withXmlTag    : @"Updates"
             withHandler   : [MPSEWSNonEmptyArrayOfItemChangeDescriptionsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSItemChangeType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ItemChangeType: ItemId=%@ OccurrenceItemId=%@ RecurringMasterItemId=%@ Updates=%@", _itemId, _occurrenceItemId, _recurringMasterItemId, _updates];
}

@end

