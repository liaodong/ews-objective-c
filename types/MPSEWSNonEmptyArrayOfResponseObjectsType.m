#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSNonEmptyArrayOfResponseObjectsType.h"
#import "../types/MPSEWSAcceptItemType.h"
#import "../types/MPSEWSCancelCalendarItemType.h"
#import "../types/MPSEWSDeclineItemType.h"
#import "../types/MPSEWSForwardItemType.h"
#import "../types/MPSEWSPostReplyItemType.h"
#import "../types/MPSEWSRemoveItemType.h"
#import "../types/MPSEWSReplyAllToItemType.h"
#import "../types/MPSEWSReplyToItemType.h"
#import "../types/MPSEWSSuppressReadReceiptType.h"
#import "../types/MPSEWSTentativelyAcceptItemType.h"


@implementation MPSEWSNonEmptyArrayOfResponseObjectsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSNonEmptyArrayOfResponseObjectsType class]];

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

    [handler register];
}

+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfResponseObjectsType*) val
{   (void) val;
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
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSNonEmptyArrayOfResponseObjectsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfResponseObjectsType: AcceptItem=%@ TentativelyAcceptItem=%@ DeclineItem=%@ ReplyToItem=%@ ForwardItem=%@ ReplyAllToItem=%@ CancelCalendarItem=%@ RemoveItem=%@ SuppressReadReceipt=%@ PostReplyItem=%@", _acceptItem, _tentativelyAcceptItem, _declineItem, _replyToItem, _forwardItem, _replyAllToItem, _cancelCalendarItem, _removeItem, _suppressReadReceipt, _postReplyItem];
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

@end

