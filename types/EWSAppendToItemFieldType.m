#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSAppendToItemFieldType.h"
#import "../types/EWSBasePathToElementType.h"
#import "../types/EWSCalendarItemType.h"
#import "../types/EWSContactItemType.h"
#import "../types/EWSDistributionListType.h"
#import "../types/EWSItemType.h"
#import "../types/EWSMeetingCancellationMessageType.h"
#import "../types/EWSMeetingMessageType.h"
#import "../types/EWSMeetingRequestMessageType.h"
#import "../types/EWSMeetingResponseMessageType.h"
#import "../types/EWSMessageType.h"
#import "../types/EWSPostItemType.h"
#import "../types/EWSTaskType.h"


@implementation EWSAppendToItemFieldType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSAppendToItemFieldType class]];

    [handler property      : @"path"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Path"
             withHandler   : [EWSBasePathToElementType class]];

    [handler property      : @"item"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Item"
             withHandler   : [EWSItemType class]];

    [handler property      : @"message"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Message"
             withHandler   : [EWSMessageType class]];

    [handler property      : @"calendarItem"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"CalendarItem"
             withHandler   : [EWSCalendarItemType class]];

    [handler property      : @"contact"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Contact"
             withHandler   : [EWSContactItemType class]];

    [handler property      : @"distributionList"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"DistributionList"
             withHandler   : [EWSDistributionListType class]];

    [handler property      : @"meetingMessage"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"MeetingMessage"
             withHandler   : [EWSMeetingMessageType class]];

    [handler property      : @"meetingRequest"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"MeetingRequest"
             withHandler   : [EWSMeetingRequestMessageType class]];

    [handler property      : @"meetingResponse"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"MeetingResponse"
             withHandler   : [EWSMeetingResponseMessageType class]];

    [handler property      : @"meetingCancellation"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"MeetingCancellation"
             withHandler   : [EWSMeetingCancellationMessageType class]];

    [handler property      : @"task"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Task"
             withHandler   : [EWSTaskType class]];

    [handler property      : @"postItem"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"PostItem"
             withHandler   : [EWSPostItemType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSAppendToItemFieldType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"AppendToItemFieldType: Item=%@ Message=%@ CalendarItem=%@ Contact=%@ DistributionList=%@ MeetingMessage=%@ MeetingRequest=%@ MeetingResponse=%@ MeetingCancellation=%@ Task=%@ PostItem=%@ super=%@", _item, _message, _calendarItem, _contact, _distributionList, _meetingMessage, _meetingRequest, _meetingResponse, _meetingCancellation, _task, _postItem, [super description]];
}

@end

