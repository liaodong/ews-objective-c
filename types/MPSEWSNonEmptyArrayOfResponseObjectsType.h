#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSAcceptItemType;
@class MPSEWSAcceptSharingInvitationType;
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
+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfResponseObjectsType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSAcceptItemType*>*              acceptItem;
@property (strong) NSMutableArray<MPSEWSTentativelyAcceptItemType*>*   tentativelyAcceptItem;
@property (strong) NSMutableArray<MPSEWSDeclineItemType*>*             declineItem;
@property (strong) NSMutableArray<MPSEWSReplyToItemType*>*             replyToItem;
@property (strong) NSMutableArray<MPSEWSForwardItemType*>*             forwardItem;
@property (strong) NSMutableArray<MPSEWSReplyAllToItemType*>*          replyAllToItem;
@property (strong) NSMutableArray<MPSEWSCancelCalendarItemType*>*      cancelCalendarItem;
@property (strong) NSMutableArray<MPSEWSRemoveItemType*>*              removeItem;
@property (strong) NSMutableArray<MPSEWSSuppressReadReceiptType*>*     suppressReadReceipt;
@property (strong) NSMutableArray<MPSEWSPostReplyItemType*>*           postReplyItem;
@property (strong) NSMutableArray<MPSEWSAcceptSharingInvitationType*>* acceptSharingInvitation;


- (void) addAcceptItem:(MPSEWSAcceptItemType*) elem;
- (void) addTentativelyAcceptItem:(MPSEWSTentativelyAcceptItemType*) elem;
- (void) addDeclineItem:(MPSEWSDeclineItemType*) elem;
- (void) addReplyToItem:(MPSEWSReplyToItemType*) elem;
- (void) addForwardItem:(MPSEWSForwardItemType*) elem;
- (void) addReplyAllToItem:(MPSEWSReplyAllToItemType*) elem;
- (void) addCancelCalendarItem:(MPSEWSCancelCalendarItemType*) elem;
- (void) addRemoveItem:(MPSEWSRemoveItemType*) elem;
- (void) addSuppressReadReceipt:(MPSEWSSuppressReadReceiptType*) elem;
- (void) addPostReplyItem:(MPSEWSPostReplyItemType*) elem;
- (void) addAcceptSharingInvitation:(MPSEWSAcceptSharingInvitationType*) elem;
@end

