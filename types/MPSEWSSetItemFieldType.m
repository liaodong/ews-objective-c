#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSSetItemFieldType.h"
#import "../types/MPSEWSBasePathToElementType.h"
#import "../types/MPSEWSCalendarItemType.h"
#import "../types/MPSEWSContactItemType.h"
#import "../types/MPSEWSDistributionListType.h"
#import "../types/MPSEWSItemType.h"
#import "../types/MPSEWSMeetingCancellationMessageType.h"
#import "../types/MPSEWSMeetingMessageType.h"
#import "../types/MPSEWSMeetingRequestMessageType.h"
#import "../types/MPSEWSMeetingResponseMessageType.h"
#import "../types/MPSEWSMessageType.h"
#import "../types/MPSEWSPostItemType.h"
#import "../types/MPSEWSTaskType.h"


@implementation MPSEWSSetItemFieldType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSSetItemFieldType class]];

    [handler property      : @"path"
             withNamespace : 't'
             withXmlTag    : @"Path"
             withHandler   : [MPSEWSBasePathToElementType class]];

    [handler property      : @"item"
             withNamespace : 't'
             withXmlTag    : @"Item"
             withHandler   : [MPSEWSItemType class]];

    [handler property      : @"message"
             withNamespace : 't'
             withXmlTag    : @"Message"
             withHandler   : [MPSEWSMessageType class]];

    [handler property      : @"calendarItem"
             withNamespace : 't'
             withXmlTag    : @"CalendarItem"
             withHandler   : [MPSEWSCalendarItemType class]];

    [handler property      : @"contact"
             withNamespace : 't'
             withXmlTag    : @"Contact"
             withHandler   : [MPSEWSContactItemType class]];

    [handler property      : @"distributionList"
             withNamespace : 't'
             withXmlTag    : @"DistributionList"
             withHandler   : [MPSEWSDistributionListType class]];

    [handler property      : @"meetingMessage"
             withNamespace : 't'
             withXmlTag    : @"MeetingMessage"
             withHandler   : [MPSEWSMeetingMessageType class]];

    [handler property      : @"meetingRequest"
             withNamespace : 't'
             withXmlTag    : @"MeetingRequest"
             withHandler   : [MPSEWSMeetingRequestMessageType class]];

    [handler property      : @"meetingResponse"
             withNamespace : 't'
             withXmlTag    : @"MeetingResponse"
             withHandler   : [MPSEWSMeetingResponseMessageType class]];

    [handler property      : @"meetingCancellation"
             withNamespace : 't'
             withXmlTag    : @"MeetingCancellation"
             withHandler   : [MPSEWSMeetingCancellationMessageType class]];

    [handler property      : @"task"
             withNamespace : 't'
             withXmlTag    : @"Task"
             withHandler   : [MPSEWSTaskType class]];

    [handler property      : @"postItem"
             withNamespace : 't'
             withXmlTag    : @"PostItem"
             withHandler   : [MPSEWSPostItemType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSSetItemFieldType*) val
{   (void) val;
    if (![MPSEWSItemChangeDescriptionType isValid:val]) return FALSE;
    if ([val item] && ![MPSEWSItemType isValid:[val item]]) return FALSE;
    if ([val message] && ![MPSEWSMessageType isValid:[val message]]) return FALSE;
    if ([val calendarItem] && ![MPSEWSCalendarItemType isValid:[val calendarItem]]) return FALSE;
    if ([val contact] && ![MPSEWSContactItemType isValid:[val contact]]) return FALSE;
    if ([val distributionList] && ![MPSEWSDistributionListType isValid:[val distributionList]]) return FALSE;
    if ([val meetingMessage] && ![MPSEWSMeetingMessageType isValid:[val meetingMessage]]) return FALSE;
    if ([val meetingRequest] && ![MPSEWSMeetingRequestMessageType isValid:[val meetingRequest]]) return FALSE;
    if ([val meetingResponse] && ![MPSEWSMeetingResponseMessageType isValid:[val meetingResponse]]) return FALSE;
    if ([val meetingCancellation] && ![MPSEWSMeetingCancellationMessageType isValid:[val meetingCancellation]]) return FALSE;
    if ([val task] && ![MPSEWSTaskType isValid:[val task]]) return FALSE;
    if ([val postItem] && ![MPSEWSPostItemType isValid:[val postItem]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSSetItemFieldType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SetItemFieldType: Item=%@ Message=%@ CalendarItem=%@ Contact=%@ DistributionList=%@ MeetingMessage=%@ MeetingRequest=%@ MeetingResponse=%@ MeetingCancellation=%@ Task=%@ PostItem=%@ super=%@", _item, _message, _calendarItem, _contact, _distributionList, _meetingMessage, _meetingRequest, _meetingResponse, _meetingCancellation, _task, _postItem, [super description]];
}

@end

