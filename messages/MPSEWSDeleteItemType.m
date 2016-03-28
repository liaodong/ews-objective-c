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
             isRequired  : TRUE
             withAttrTag : @"DeleteType"
             withHandler : [MPSEWSDisposalType class]];

    [handler property    : @"sendMeetingCancellations"
             isRequired  : FALSE
             withAttrTag : @"SendMeetingCancellations"
             withHandler : [MPSEWSCalendarItemCreateOrDeleteOperationType class]];

    [handler property    : @"affectedTaskOccurrences"
             isRequired  : FALSE
             withAttrTag : @"AffectedTaskOccurrences"
             withHandler : [MPSEWSAffectedTaskOccurrencesType class]];

    [handler property      : @"itemIds"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"ItemIds"
             withHandler   : [MPSEWSNonEmptyArrayOfBaseItemIdsType class]];

    [handler register];
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

