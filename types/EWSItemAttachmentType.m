#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSItemAttachmentType.h"


@implementation EWSItemAttachmentType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSItemAttachmentType class]];

    [handler property   : @"attachmentId"
             isRequired : FALSE
             withXmlTag : @"AttachmentId"
             withHandler: [EWSAttachmentIdType class]];

    [handler property   : @"name"
             isRequired : FALSE
             withXmlTag : @"Name"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"contentType"
             isRequired : FALSE
             withXmlTag : @"ContentType"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"contentId"
             isRequired : FALSE
             withXmlTag : @"ContentId"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"contentLocation"
             isRequired : FALSE
             withXmlTag : @"ContentLocation"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"item"
             isRequired : TRUE
             withXmlTag : @"Item"
             withHandler: [EWSItemType class]];

    [handler property   : @"message"
             isRequired : TRUE
             withXmlTag : @"Message"
             withHandler: [EWSMessageType class]];

    [handler property   : @"calendarItem"
             isRequired : TRUE
             withXmlTag : @"CalendarItem"
             withHandler: [EWSCalendarItemType class]];

    [handler property   : @"contact"
             isRequired : TRUE
             withXmlTag : @"Contact"
             withHandler: [EWSContactItemType class]];

    [handler property   : @"meetingMessage"
             isRequired : TRUE
             withXmlTag : @"MeetingMessage"
             withHandler: [EWSMeetingMessageType class]];

    [handler property   : @"meetingRequest"
             isRequired : TRUE
             withXmlTag : @"MeetingRequest"
             withHandler: [EWSMeetingRequestMessageType class]];

    [handler property   : @"meetingResponse"
             isRequired : TRUE
             withXmlTag : @"MeetingResponse"
             withHandler: [EWSMeetingResponseMessageType class]];

    [handler property   : @"meetingCancellation"
             isRequired : TRUE
             withXmlTag : @"MeetingCancellation"
             withHandler: [EWSMeetingCancellationMessageType class]];

    [handler property   : @"task"
             isRequired : TRUE
             withXmlTag : @"Task"
             withHandler: [EWSTaskType class]];

    [handler property   : @"postItem"
             isRequired : TRUE
             withXmlTag : @"PostItem"
             withHandler: [EWSPostItemType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSItemAttachmentType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ItemAttachmentType: Item=%@ Message=%@ CalendarItem=%@ Contact=%@ MeetingMessage=%@ MeetingRequest=%@ MeetingResponse=%@ MeetingCancellation=%@ Task=%@ PostItem=%@ super=%@", _item, _message, _calendarItem, _contact, _meetingMessage, _meetingRequest, _meetingResponse, _meetingCancellation, _task, _postItem, [super description]];
}

@end

