#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfRealItemsType.h"
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


@implementation MPSEWSArrayOfRealItemsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfRealItemsType class]];

    [handler listProperty  : @"item"
             useSelector   : @"addItem"
             withNamespace : 't'
             withXmlTag    : @"Item"
             withHandler   : [MPSEWSItemType class]];

    [handler listProperty  : @"message"
             useSelector   : @"addMessage"
             withNamespace : 't'
             withXmlTag    : @"Message"
             withHandler   : [MPSEWSMessageType class]];

    [handler listProperty  : @"calendarItem"
             useSelector   : @"addCalendarItem"
             withNamespace : 't'
             withXmlTag    : @"CalendarItem"
             withHandler   : [MPSEWSCalendarItemType class]];

    [handler listProperty  : @"contact"
             useSelector   : @"addContact"
             withNamespace : 't'
             withXmlTag    : @"Contact"
             withHandler   : [MPSEWSContactItemType class]];

    [handler listProperty  : @"distributionList"
             useSelector   : @"addDistributionList"
             withNamespace : 't'
             withXmlTag    : @"DistributionList"
             withHandler   : [MPSEWSDistributionListType class]];

    [handler listProperty  : @"meetingMessage"
             useSelector   : @"addMeetingMessage"
             withNamespace : 't'
             withXmlTag    : @"MeetingMessage"
             withHandler   : [MPSEWSMeetingMessageType class]];

    [handler listProperty  : @"meetingRequest"
             useSelector   : @"addMeetingRequest"
             withNamespace : 't'
             withXmlTag    : @"MeetingRequest"
             withHandler   : [MPSEWSMeetingRequestMessageType class]];

    [handler listProperty  : @"meetingResponse"
             useSelector   : @"addMeetingResponse"
             withNamespace : 't'
             withXmlTag    : @"MeetingResponse"
             withHandler   : [MPSEWSMeetingResponseMessageType class]];

    [handler listProperty  : @"meetingCancellation"
             useSelector   : @"addMeetingCancellation"
             withNamespace : 't'
             withXmlTag    : @"MeetingCancellation"
             withHandler   : [MPSEWSMeetingCancellationMessageType class]];

    [handler listProperty  : @"task"
             useSelector   : @"addTask"
             withNamespace : 't'
             withXmlTag    : @"Task"
             withHandler   : [MPSEWSTaskType class]];

    [handler listProperty  : @"postItem"
             useSelector   : @"addPostItem"
             withNamespace : 't'
             withXmlTag    : @"PostItem"
             withHandler   : [MPSEWSPostItemType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSArrayOfRealItemsType*) val
{   (void) val;
    if ([val item]) {
        for (MPSEWSItemType* obj in [val item]) {
            if (![MPSEWSItemType isValid:obj]) return FALSE;
        }
    }
    if ([val message]) {
        for (MPSEWSMessageType* obj in [val message]) {
            if (![MPSEWSMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val calendarItem]) {
        for (MPSEWSCalendarItemType* obj in [val calendarItem]) {
            if (![MPSEWSCalendarItemType isValid:obj]) return FALSE;
        }
    }
    if ([val contact]) {
        for (MPSEWSContactItemType* obj in [val contact]) {
            if (![MPSEWSContactItemType isValid:obj]) return FALSE;
        }
    }
    if ([val distributionList]) {
        for (MPSEWSDistributionListType* obj in [val distributionList]) {
            if (![MPSEWSDistributionListType isValid:obj]) return FALSE;
        }
    }
    if ([val meetingMessage]) {
        for (MPSEWSMeetingMessageType* obj in [val meetingMessage]) {
            if (![MPSEWSMeetingMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val meetingRequest]) {
        for (MPSEWSMeetingRequestMessageType* obj in [val meetingRequest]) {
            if (![MPSEWSMeetingRequestMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val meetingResponse]) {
        for (MPSEWSMeetingResponseMessageType* obj in [val meetingResponse]) {
            if (![MPSEWSMeetingResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val meetingCancellation]) {
        for (MPSEWSMeetingCancellationMessageType* obj in [val meetingCancellation]) {
            if (![MPSEWSMeetingCancellationMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val task]) {
        for (MPSEWSTaskType* obj in [val task]) {
            if (![MPSEWSTaskType isValid:obj]) return FALSE;
        }
    }
    if ([val postItem]) {
        for (MPSEWSPostItemType* obj in [val postItem]) {
            if (![MPSEWSPostItemType isValid:obj]) return FALSE;
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
    return [MPSEWSArrayOfRealItemsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfRealItemsType: Item=%@ Message=%@ CalendarItem=%@ Contact=%@ DistributionList=%@ MeetingMessage=%@ MeetingRequest=%@ MeetingResponse=%@ MeetingCancellation=%@ Task=%@ PostItem=%@", _item, _message, _calendarItem, _contact, _distributionList, _meetingMessage, _meetingRequest, _meetingResponse, _meetingCancellation, _task, _postItem];
}

- (void) addItem:(MPSEWSItemType*) elem
{
    if (![self item]) {
        [self setItem:[[NSMutableArray<MPSEWSItemType*> alloc] init]];
    }
    [_item addObject:elem];
}

- (void) addMessage:(MPSEWSMessageType*) elem
{
    if (![self message]) {
        [self setMessage:[[NSMutableArray<MPSEWSMessageType*> alloc] init]];
    }
    [_message addObject:elem];
}

- (void) addCalendarItem:(MPSEWSCalendarItemType*) elem
{
    if (![self calendarItem]) {
        [self setCalendarItem:[[NSMutableArray<MPSEWSCalendarItemType*> alloc] init]];
    }
    [_calendarItem addObject:elem];
}

- (void) addContact:(MPSEWSContactItemType*) elem
{
    if (![self contact]) {
        [self setContact:[[NSMutableArray<MPSEWSContactItemType*> alloc] init]];
    }
    [_contact addObject:elem];
}

- (void) addDistributionList:(MPSEWSDistributionListType*) elem
{
    if (![self distributionList]) {
        [self setDistributionList:[[NSMutableArray<MPSEWSDistributionListType*> alloc] init]];
    }
    [_distributionList addObject:elem];
}

- (void) addMeetingMessage:(MPSEWSMeetingMessageType*) elem
{
    if (![self meetingMessage]) {
        [self setMeetingMessage:[[NSMutableArray<MPSEWSMeetingMessageType*> alloc] init]];
    }
    [_meetingMessage addObject:elem];
}

- (void) addMeetingRequest:(MPSEWSMeetingRequestMessageType*) elem
{
    if (![self meetingRequest]) {
        [self setMeetingRequest:[[NSMutableArray<MPSEWSMeetingRequestMessageType*> alloc] init]];
    }
    [_meetingRequest addObject:elem];
}

- (void) addMeetingResponse:(MPSEWSMeetingResponseMessageType*) elem
{
    if (![self meetingResponse]) {
        [self setMeetingResponse:[[NSMutableArray<MPSEWSMeetingResponseMessageType*> alloc] init]];
    }
    [_meetingResponse addObject:elem];
}

- (void) addMeetingCancellation:(MPSEWSMeetingCancellationMessageType*) elem
{
    if (![self meetingCancellation]) {
        [self setMeetingCancellation:[[NSMutableArray<MPSEWSMeetingCancellationMessageType*> alloc] init]];
    }
    [_meetingCancellation addObject:elem];
}

- (void) addTask:(MPSEWSTaskType*) elem
{
    if (![self task]) {
        [self setTask:[[NSMutableArray<MPSEWSTaskType*> alloc] init]];
    }
    [_task addObject:elem];
}

- (void) addPostItem:(MPSEWSPostItemType*) elem
{
    if (![self postItem]) {
        [self setPostItem:[[NSMutableArray<MPSEWSPostItemType*> alloc] init]];
    }
    [_postItem addObject:elem];
}

@end

