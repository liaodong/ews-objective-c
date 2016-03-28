#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSItemAttachmentType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSAttachmentIdType.h"
#import "../types/MPSEWSCalendarItemType.h"
#import "../types/MPSEWSContactItemType.h"
#import "../types/MPSEWSItemType.h"
#import "../types/MPSEWSMeetingCancellationMessageType.h"
#import "../types/MPSEWSMeetingMessageType.h"
#import "../types/MPSEWSMeetingRequestMessageType.h"
#import "../types/MPSEWSMeetingResponseMessageType.h"
#import "../types/MPSEWSMessageType.h"
#import "../types/MPSEWSPostItemType.h"
#import "../types/MPSEWSTaskType.h"


@implementation MPSEWSItemAttachmentType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSItemAttachmentType class]];

    [handler property      : @"attachmentId"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"AttachmentId"
             withHandler   : [MPSEWSAttachmentIdType class]];

    [handler property      : @"name"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Name"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"contentType"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ContentType"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"contentId"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ContentId"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"contentLocation"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ContentLocation"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"item"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Item"
             withHandler   : [MPSEWSItemType class]];

    [handler property      : @"message"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Message"
             withHandler   : [MPSEWSMessageType class]];

    [handler property      : @"calendarItem"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"CalendarItem"
             withHandler   : [MPSEWSCalendarItemType class]];

    [handler property      : @"contact"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Contact"
             withHandler   : [MPSEWSContactItemType class]];

    [handler property      : @"meetingMessage"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"MeetingMessage"
             withHandler   : [MPSEWSMeetingMessageType class]];

    [handler property      : @"meetingRequest"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"MeetingRequest"
             withHandler   : [MPSEWSMeetingRequestMessageType class]];

    [handler property      : @"meetingResponse"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"MeetingResponse"
             withHandler   : [MPSEWSMeetingResponseMessageType class]];

    [handler property      : @"meetingCancellation"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"MeetingCancellation"
             withHandler   : [MPSEWSMeetingCancellationMessageType class]];

    [handler property      : @"task"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Task"
             withHandler   : [MPSEWSTaskType class]];

    [handler property      : @"postItem"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"PostItem"
             withHandler   : [MPSEWSPostItemType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSItemAttachmentType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ItemAttachmentType: Item=%@ Message=%@ CalendarItem=%@ Contact=%@ MeetingMessage=%@ MeetingRequest=%@ MeetingResponse=%@ MeetingCancellation=%@ Task=%@ PostItem=%@ super=%@", _item, _message, _calendarItem, _contact, _meetingMessage, _meetingRequest, _meetingResponse, _meetingCancellation, _task, _postItem, [super description]];
}

@end

