#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSNonEmptyArrayOfAllItemsType.h"
#import "../types/MPSEWSAcceptItemType.h"
#import "../types/MPSEWSAcceptSharingInvitationType.h"
#import "../types/MPSEWSCalendarItemType.h"
#import "../types/MPSEWSCancelCalendarItemType.h"
#import "../types/MPSEWSContactItemType.h"
#import "../types/MPSEWSDeclineItemType.h"
#import "../types/MPSEWSDistributionListType.h"
#import "../types/MPSEWSForwardItemType.h"
#import "../types/MPSEWSItemType.h"
#import "../types/MPSEWSMeetingCancellationMessageType.h"
#import "../types/MPSEWSMeetingMessageType.h"
#import "../types/MPSEWSMeetingRequestMessageType.h"
#import "../types/MPSEWSMeetingResponseMessageType.h"
#import "../types/MPSEWSMessageType.h"
#import "../types/MPSEWSPostItemType.h"
#import "../types/MPSEWSPostReplyItemType.h"
#import "../types/MPSEWSRemoveItemType.h"
#import "../types/MPSEWSReplyAllToItemType.h"
#import "../types/MPSEWSReplyToItemType.h"
#import "../types/MPSEWSSuppressReadReceiptType.h"
#import "../types/MPSEWSTaskType.h"
#import "../types/MPSEWSTentativelyAcceptItemType.h"


@implementation MPSEWSNonEmptyArrayOfAllItemsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSNonEmptyArrayOfAllItemsType class]];

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

    [handler listProperty  : @"replyToItem"
             useSelector   : @"addReplyToItem"
             withNamespace : 't'
             withXmlTag    : @"ReplyToItem"
             withHandler   : [MPSEWSReplyToItemType class]];

    [handler listProperty  : @"forwardItem"
             useSelector   : @"addForwardItem"
             withNamespace : 't'
             withXmlTag    : @"ForwardItem"
             withHandler   : [MPSEWSForwardItemType class]];

    [handler listProperty  : @"replyAllToItem"
             useSelector   : @"addReplyAllToItem"
             withNamespace : 't'
             withXmlTag    : @"ReplyAllToItem"
             withHandler   : [MPSEWSReplyAllToItemType class]];

    [handler listProperty  : @"acceptItem"
             useSelector   : @"addAcceptItem"
             withNamespace : 't'
             withXmlTag    : @"AcceptItem"
             withHandler   : [MPSEWSAcceptItemType class]];

    [handler listProperty  : @"tentativelyAcceptItem"
             useSelector   : @"addTentativelyAcceptItem"
             withNamespace : 't'
             withXmlTag    : @"TentativelyAcceptItem"
             withHandler   : [MPSEWSTentativelyAcceptItemType class]];

    [handler listProperty  : @"declineItem"
             useSelector   : @"addDeclineItem"
             withNamespace : 't'
             withXmlTag    : @"DeclineItem"
             withHandler   : [MPSEWSDeclineItemType class]];

    [handler listProperty  : @"cancelCalendarItem"
             useSelector   : @"addCancelCalendarItem"
             withNamespace : 't'
             withXmlTag    : @"CancelCalendarItem"
             withHandler   : [MPSEWSCancelCalendarItemType class]];

    [handler listProperty  : @"removeItem"
             useSelector   : @"addRemoveItem"
             withNamespace : 't'
             withXmlTag    : @"RemoveItem"
             withHandler   : [MPSEWSRemoveItemType class]];

    [handler listProperty  : @"suppressReadReceipt"
             useSelector   : @"addSuppressReadReceipt"
             withNamespace : 't'
             withXmlTag    : @"SuppressReadReceipt"
             withHandler   : [MPSEWSSuppressReadReceiptType class]];

    [handler listProperty  : @"postReplyItem"
             useSelector   : @"addPostReplyItem"
             withNamespace : 't'
             withXmlTag    : @"PostReplyItem"
             withHandler   : [MPSEWSPostReplyItemType class]];

    [handler listProperty  : @"acceptSharingInvitation"
             useSelector   : @"addAcceptSharingInvitation"
             withNamespace : 't'
             withXmlTag    : @"AcceptSharingInvitation"
             withHandler   : [MPSEWSAcceptSharingInvitationType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfAllItemsType*) val
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
    if ([val replyToItem]) {
        for (MPSEWSReplyToItemType* obj in [val replyToItem]) {
            if (![MPSEWSReplyToItemType isValid:obj]) return FALSE;
        }
    }
    if ([val forwardItem]) {
        for (MPSEWSForwardItemType* obj in [val forwardItem]) {
            if (![MPSEWSForwardItemType isValid:obj]) return FALSE;
        }
    }
    if ([val replyAllToItem]) {
        for (MPSEWSReplyAllToItemType* obj in [val replyAllToItem]) {
            if (![MPSEWSReplyAllToItemType isValid:obj]) return FALSE;
        }
    }
    if ([val acceptItem]) {
        for (MPSEWSAcceptItemType* obj in [val acceptItem]) {
            if (![MPSEWSAcceptItemType isValid:obj]) return FALSE;
        }
    }
    if ([val tentativelyAcceptItem]) {
        for (MPSEWSTentativelyAcceptItemType* obj in [val tentativelyAcceptItem]) {
            if (![MPSEWSTentativelyAcceptItemType isValid:obj]) return FALSE;
        }
    }
    if ([val declineItem]) {
        for (MPSEWSDeclineItemType* obj in [val declineItem]) {
            if (![MPSEWSDeclineItemType isValid:obj]) return FALSE;
        }
    }
    if ([val cancelCalendarItem]) {
        for (MPSEWSCancelCalendarItemType* obj in [val cancelCalendarItem]) {
            if (![MPSEWSCancelCalendarItemType isValid:obj]) return FALSE;
        }
    }
    if ([val removeItem]) {
        for (MPSEWSRemoveItemType* obj in [val removeItem]) {
            if (![MPSEWSRemoveItemType isValid:obj]) return FALSE;
        }
    }
    if ([val suppressReadReceipt]) {
        for (MPSEWSSuppressReadReceiptType* obj in [val suppressReadReceipt]) {
            if (![MPSEWSSuppressReadReceiptType isValid:obj]) return FALSE;
        }
    }
    if ([val postReplyItem]) {
        for (MPSEWSPostReplyItemType* obj in [val postReplyItem]) {
            if (![MPSEWSPostReplyItemType isValid:obj]) return FALSE;
        }
    }
    if ([val acceptSharingInvitation]) {
        for (MPSEWSAcceptSharingInvitationType* obj in [val acceptSharingInvitation]) {
            if (![MPSEWSAcceptSharingInvitationType isValid:obj]) return FALSE;
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
    return [MPSEWSNonEmptyArrayOfAllItemsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfAllItemsType: Item=%@ Message=%@ CalendarItem=%@ Contact=%@ DistributionList=%@ MeetingMessage=%@ MeetingRequest=%@ MeetingResponse=%@ MeetingCancellation=%@ Task=%@ PostItem=%@ ReplyToItem=%@ ForwardItem=%@ ReplyAllToItem=%@ AcceptItem=%@ TentativelyAcceptItem=%@ DeclineItem=%@ CancelCalendarItem=%@ RemoveItem=%@ SuppressReadReceipt=%@ PostReplyItem=%@ AcceptSharingInvitation=%@", _item, _message, _calendarItem, _contact, _distributionList, _meetingMessage, _meetingRequest, _meetingResponse, _meetingCancellation, _task, _postItem, _replyToItem, _forwardItem, _replyAllToItem, _acceptItem, _tentativelyAcceptItem, _declineItem, _cancelCalendarItem, _removeItem, _suppressReadReceipt, _postReplyItem, _acceptSharingInvitation];
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

- (void) addReplyToItem:(MPSEWSReplyToItemType*) elem
{
    if (![self replyToItem]) {
        [self setReplyToItem:[[NSMutableArray<MPSEWSReplyToItemType*> alloc] init]];
    }
    [_replyToItem addObject:elem];
}

- (void) addForwardItem:(MPSEWSForwardItemType*) elem
{
    if (![self forwardItem]) {
        [self setForwardItem:[[NSMutableArray<MPSEWSForwardItemType*> alloc] init]];
    }
    [_forwardItem addObject:elem];
}

- (void) addReplyAllToItem:(MPSEWSReplyAllToItemType*) elem
{
    if (![self replyAllToItem]) {
        [self setReplyAllToItem:[[NSMutableArray<MPSEWSReplyAllToItemType*> alloc] init]];
    }
    [_replyAllToItem addObject:elem];
}

- (void) addAcceptItem:(MPSEWSAcceptItemType*) elem
{
    if (![self acceptItem]) {
        [self setAcceptItem:[[NSMutableArray<MPSEWSAcceptItemType*> alloc] init]];
    }
    [_acceptItem addObject:elem];
}

- (void) addTentativelyAcceptItem:(MPSEWSTentativelyAcceptItemType*) elem
{
    if (![self tentativelyAcceptItem]) {
        [self setTentativelyAcceptItem:[[NSMutableArray<MPSEWSTentativelyAcceptItemType*> alloc] init]];
    }
    [_tentativelyAcceptItem addObject:elem];
}

- (void) addDeclineItem:(MPSEWSDeclineItemType*) elem
{
    if (![self declineItem]) {
        [self setDeclineItem:[[NSMutableArray<MPSEWSDeclineItemType*> alloc] init]];
    }
    [_declineItem addObject:elem];
}

- (void) addCancelCalendarItem:(MPSEWSCancelCalendarItemType*) elem
{
    if (![self cancelCalendarItem]) {
        [self setCancelCalendarItem:[[NSMutableArray<MPSEWSCancelCalendarItemType*> alloc] init]];
    }
    [_cancelCalendarItem addObject:elem];
}

- (void) addRemoveItem:(MPSEWSRemoveItemType*) elem
{
    if (![self removeItem]) {
        [self setRemoveItem:[[NSMutableArray<MPSEWSRemoveItemType*> alloc] init]];
    }
    [_removeItem addObject:elem];
}

- (void) addSuppressReadReceipt:(MPSEWSSuppressReadReceiptType*) elem
{
    if (![self suppressReadReceipt]) {
        [self setSuppressReadReceipt:[[NSMutableArray<MPSEWSSuppressReadReceiptType*> alloc] init]];
    }
    [_suppressReadReceipt addObject:elem];
}

- (void) addPostReplyItem:(MPSEWSPostReplyItemType*) elem
{
    if (![self postReplyItem]) {
        [self setPostReplyItem:[[NSMutableArray<MPSEWSPostReplyItemType*> alloc] init]];
    }
    [_postReplyItem addObject:elem];
}

- (void) addAcceptSharingInvitation:(MPSEWSAcceptSharingInvitationType*) elem
{
    if (![self acceptSharingInvitation]) {
        [self setAcceptSharingInvitation:[[NSMutableArray<MPSEWSAcceptSharingInvitationType*> alloc] init]];
    }
    [_acceptSharingInvitation addObject:elem];
}

@end

