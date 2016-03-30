#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSDeleteItemType.h"
#import "../types/MPSEWSAffectedTaskOccurrencesType.h"
#import "../types/MPSEWSCalendarItemCreateOrDeleteOperationType.h"
#import "../types/MPSEWSDisposalType.h"
#import "../types/MPSEWSNonEmptyArrayOfBaseItemIdsType.h"


@implementation MPSEWSDeleteItemType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSDeleteItemType class]];

    [handler property    : @"deleteType"
             withAttrTag : @"DeleteType"
             withHandler : [MPSEWSDisposalType class]];

    [handler property    : @"sendMeetingCancellations"
             withAttrTag : @"SendMeetingCancellations"
             withHandler : [MPSEWSCalendarItemCreateOrDeleteOperationType class]];

    [handler property    : @"affectedTaskOccurrences"
             withAttrTag : @"AffectedTaskOccurrences"
             withHandler : [MPSEWSAffectedTaskOccurrencesType class]];

    [handler property      : @"itemIds"
             withNamespace : 'm'
             withXmlTag    : @"ItemIds"
             withHandler   : [MPSEWSNonEmptyArrayOfBaseItemIdsType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSDeleteItemType*) val
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val]) return FALSE;
    if ([val deleteType] && ![MPSEWSDisposalType isValid:[val deleteType]]) return FALSE;
    if ([val sendMeetingCancellations] && ![MPSEWSCalendarItemCreateOrDeleteOperationType isValid:[val sendMeetingCancellations]]) return FALSE;
    if ([val affectedTaskOccurrences] && ![MPSEWSAffectedTaskOccurrencesType isValid:[val affectedTaskOccurrences]]) return FALSE;
    if ([val itemIds] && ![MPSEWSNonEmptyArrayOfBaseItemIdsType isValid:[val itemIds]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSDeleteItemType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"DeleteItemType: DeleteType=%@ SendMeetingCancellations=%@ AffectedTaskOccurrences=%@ ItemIds=%@ super=%@", _deleteType, _sendMeetingCancellations, _affectedTaskOccurrences, _itemIds, [super description]];
}

@end

