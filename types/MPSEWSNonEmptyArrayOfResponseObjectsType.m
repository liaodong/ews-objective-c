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

    [handler property      : @"acceptItem"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"AcceptItem"
             withHandler   : [MPSEWSAcceptItemType class]];

    [handler property      : @"tentativelyAcceptItem"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"TentativelyAcceptItem"
             withHandler   : [MPSEWSTentativelyAcceptItemType class]];

    [handler property      : @"declineItem"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"DeclineItem"
             withHandler   : [MPSEWSDeclineItemType class]];

    [handler property      : @"replyToItem"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"ReplyToItem"
             withHandler   : [MPSEWSReplyToItemType class]];

    [handler property      : @"forwardItem"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"ForwardItem"
             withHandler   : [MPSEWSForwardItemType class]];

    [handler property      : @"replyAllToItem"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"ReplyAllToItem"
             withHandler   : [MPSEWSReplyAllToItemType class]];

    [handler property      : @"cancelCalendarItem"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"CancelCalendarItem"
             withHandler   : [MPSEWSCancelCalendarItemType class]];

    [handler property      : @"removeItem"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"RemoveItem"
             withHandler   : [MPSEWSRemoveItemType class]];

    [handler property      : @"suppressReadReceipt"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"SuppressReadReceipt"
             withHandler   : [MPSEWSSuppressReadReceiptType class]];

    [handler property      : @"postReplyItem"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"PostReplyItem"
             withHandler   : [MPSEWSPostReplyItemType class]];

    [handler register];
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

@end

