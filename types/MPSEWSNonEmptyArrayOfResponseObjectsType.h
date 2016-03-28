#import <Foundation/Foundation.h>



@class MPSEWSAcceptItemType;
@class MPSEWSCancelCalendarItemType;
@class MPSEWSDeclineItemType;
@class MPSEWSForwardItemType;
@class MPSEWSPostReplyItemType;
@class MPSEWSRemoveItemType;
@class MPSEWSReplyAllToItemType;
@class MPSEWSReplyToItemType;
@class MPSEWSSuppressReadReceiptType;
@class MPSEWSTentativelyAcceptItemType;



/* NonEmptyArrayOfResponseObjectsType */
@interface MPSEWSNonEmptyArrayOfResponseObjectsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSAcceptItemType*            acceptItem;
@property (strong) MPSEWSTentativelyAcceptItemType* tentativelyAcceptItem;
@property (strong) MPSEWSDeclineItemType*           declineItem;
@property (strong) MPSEWSReplyToItemType*           replyToItem;
@property (strong) MPSEWSForwardItemType*           forwardItem;
@property (strong) MPSEWSReplyAllToItemType*        replyAllToItem;
@property (strong) MPSEWSCancelCalendarItemType*    cancelCalendarItem;
@property (strong) MPSEWSRemoveItemType*            removeItem;
@property (strong) MPSEWSSuppressReadReceiptType*   suppressReadReceipt;
@property (strong) MPSEWSPostReplyItemType*         postReplyItem;


@end

