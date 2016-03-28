#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSNonEmptyArrayOfResponseObjectsType.h"
#import "../types/EWSAcceptItemType.h"
#import "../types/EWSCancelCalendarItemType.h"
#import "../types/EWSDeclineItemType.h"
#import "../types/EWSForwardItemType.h"
#import "../types/EWSPostReplyItemType.h"
#import "../types/EWSRemoveItemType.h"
#import "../types/EWSReplyAllToItemType.h"
#import "../types/EWSReplyToItemType.h"
#import "../types/EWSSuppressReadReceiptType.h"
#import "../types/EWSTentativelyAcceptItemType.h"


@implementation EWSNonEmptyArrayOfResponseObjectsType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSNonEmptyArrayOfResponseObjectsType class]];

    [handler property      : @"acceptItem"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"AcceptItem"
             withHandler   : [EWSAcceptItemType class]];

    [handler property      : @"tentativelyAcceptItem"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"TentativelyAcceptItem"
             withHandler   : [EWSTentativelyAcceptItemType class]];

    [handler property      : @"declineItem"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"DeclineItem"
             withHandler   : [EWSDeclineItemType class]];

    [handler property      : @"replyToItem"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"ReplyToItem"
             withHandler   : [EWSReplyToItemType class]];

    [handler property      : @"forwardItem"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"ForwardItem"
             withHandler   : [EWSForwardItemType class]];

    [handler property      : @"replyAllToItem"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"ReplyAllToItem"
             withHandler   : [EWSReplyAllToItemType class]];

    [handler property      : @"cancelCalendarItem"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"CancelCalendarItem"
             withHandler   : [EWSCancelCalendarItemType class]];

    [handler property      : @"removeItem"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"RemoveItem"
             withHandler   : [EWSRemoveItemType class]];

    [handler property      : @"suppressReadReceipt"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"SuppressReadReceipt"
             withHandler   : [EWSSuppressReadReceiptType class]];

    [handler property      : @"postReplyItem"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"PostReplyItem"
             withHandler   : [EWSPostReplyItemType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSNonEmptyArrayOfResponseObjectsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfResponseObjectsType: AcceptItem=%@ TentativelyAcceptItem=%@ DeclineItem=%@ ReplyToItem=%@ ForwardItem=%@ ReplyAllToItem=%@ CancelCalendarItem=%@ RemoveItem=%@ SuppressReadReceipt=%@ PostReplyItem=%@", _acceptItem, _tentativelyAcceptItem, _declineItem, _replyToItem, _forwardItem, _replyAllToItem, _cancelCalendarItem, _removeItem, _suppressReadReceipt, _postReplyItem];
}

@end

