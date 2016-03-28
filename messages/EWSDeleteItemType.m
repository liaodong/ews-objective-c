#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSDeleteItemType.h"
#import "../types/EWSAffectedTaskOccurrencesType.h"
#import "../types/EWSCalendarItemCreateOrDeleteOperationType.h"
#import "../types/EWSDisposalType.h"
#import "../types/EWSNonEmptyArrayOfBaseItemIdsType.h"


@implementation EWSDeleteItemType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSDeleteItemType class]];

    [handler property    : @"deleteType"
             isRequired  : TRUE
             withAttrTag : @"DeleteType"
             withHandler : [EWSDisposalType class]];

    [handler property    : @"sendMeetingCancellations"
             isRequired  : FALSE
             withAttrTag : @"SendMeetingCancellations"
             withHandler : [EWSCalendarItemCreateOrDeleteOperationType class]];

    [handler property    : @"affectedTaskOccurrences"
             isRequired  : FALSE
             withAttrTag : @"AffectedTaskOccurrences"
             withHandler : [EWSAffectedTaskOccurrencesType class]];

    [handler property      : @"itemIds"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"ItemIds"
             withHandler   : [EWSNonEmptyArrayOfBaseItemIdsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSDeleteItemType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"DeleteItemType: DeleteType=%@ SendMeetingCancellations=%@ AffectedTaskOccurrences=%@ ItemIds=%@ super=%@", _deleteType, _sendMeetingCancellations, _affectedTaskOccurrences, _itemIds, [super description]];
}

@end

