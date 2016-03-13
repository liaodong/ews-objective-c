#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSAppendToItemFieldType.h"


@implementation EWSAppendToItemFieldType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSAppendToItemFieldType class]];

    [handler property   : @"path"
             isRequired : TRUE
             withXmlTag : @"Path"
             withHandler: [EWSBasePathToElementType class]];

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

    [handler property   : @"distributionList"
             isRequired : TRUE
             withXmlTag : @"DistributionList"
             withHandler: [EWSDistributionListType class]];

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
    return [EWSAppendToItemFieldType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"AppendToItemFieldType: Item=%@ Message=%@ CalendarItem=%@ Contact=%@ DistributionList=%@ MeetingMessage=%@ MeetingRequest=%@ MeetingResponse=%@ MeetingCancellation=%@ Task=%@ PostItem=%@ super=%@", _item, _message, _calendarItem, _contact, _distributionList, _meetingMessage, _meetingRequest, _meetingResponse, _meetingCancellation, _task, _postItem, [super description]];
}

@end

