#import <Foundation/Foundation.h>



@class EWSAcceptItemType;
@class EWSCancelCalendarItemType;
@class EWSDeclineItemType;
@class EWSForwardItemType;
@class EWSPostReplyItemType;
@class EWSRemoveItemType;
@class EWSReplyAllToItemType;
@class EWSReplyToItemType;
@class EWSSuppressReadReceiptType;
@class EWSTentativelyAcceptItemType;



/* NonEmptyArrayOfResponseObjectsType */
@interface EWSNonEmptyArrayOfResponseObjectsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSAcceptItemType*            acceptItem;
@property (strong) EWSTentativelyAcceptItemType* tentativelyAcceptItem;
@property (strong) EWSDeclineItemType*           declineItem;
@property (strong) EWSReplyToItemType*           replyToItem;
@property (strong) EWSForwardItemType*           forwardItem;
@property (strong) EWSReplyAllToItemType*        replyAllToItem;
@property (strong) EWSCancelCalendarItemType*    cancelCalendarItem;
@property (strong) EWSRemoveItemType*            removeItem;
@property (strong) EWSSuppressReadReceiptType*   suppressReadReceipt;
@property (strong) EWSPostReplyItemType*         postReplyItem;


@end

