#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSAcceptItemType;
@class MPSEWSAcceptSharingInvitationType;
@class MPSEWSCalendarItemType;
@class MPSEWSCancelCalendarItemType;
@class MPSEWSContactItemType;
@class MPSEWSDeclineItemType;
@class MPSEWSDistributionListType;
@class MPSEWSForwardItemType;
@class MPSEWSItemType;
@class MPSEWSMeetingCancellationMessageType;
@class MPSEWSMeetingMessageType;
@class MPSEWSMeetingRequestMessageType;
@class MPSEWSMeetingResponseMessageType;
@class MPSEWSMessageType;
@class MPSEWSPostItemType;
@class MPSEWSPostReplyItemType;
@class MPSEWSRemoveItemType;
@class MPSEWSReplyAllToItemType;
@class MPSEWSReplyToItemType;
@class MPSEWSSuppressReadReceiptType;
@class MPSEWSTaskType;
@class MPSEWSTentativelyAcceptItemType;



/* NonEmptyArrayOfAllItemsType */
@interface MPSEWSNonEmptyArrayOfAllItemsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfAllItemsType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSItemType*>*                       item;
@property (strong) NSMutableArray<MPSEWSMessageType*>*                    message;
@property (strong) NSMutableArray<MPSEWSCalendarItemType*>*               calendarItem;
@property (strong) NSMutableArray<MPSEWSContactItemType*>*                contact;
@property (strong) NSMutableArray<MPSEWSDistributionListType*>*           distributionList;
@property (strong) NSMutableArray<MPSEWSMeetingMessageType*>*             meetingMessage;
@property (strong) NSMutableArray<MPSEWSMeetingRequestMessageType*>*      meetingRequest;
@property (strong) NSMutableArray<MPSEWSMeetingResponseMessageType*>*     meetingResponse;
@property (strong) NSMutableArray<MPSEWSMeetingCancellationMessageType*>* meetingCancellation;
@property (strong) NSMutableArray<MPSEWSTaskType*>*                       task;
@property (strong) NSMutableArray<MPSEWSPostItemType*>*                   postItem;
@property (strong) NSMutableArray<MPSEWSReplyToItemType*>*                replyToItem;
@property (strong) NSMutableArray<MPSEWSForwardItemType*>*                forwardItem;
@property (strong) NSMutableArray<MPSEWSReplyAllToItemType*>*             replyAllToItem;
@property (strong) NSMutableArray<MPSEWSAcceptItemType*>*                 acceptItem;
@property (strong) NSMutableArray<MPSEWSTentativelyAcceptItemType*>*      tentativelyAcceptItem;
@property (strong) NSMutableArray<MPSEWSDeclineItemType*>*                declineItem;
@property (strong) NSMutableArray<MPSEWSCancelCalendarItemType*>*         cancelCalendarItem;
@property (strong) NSMutableArray<MPSEWSRemoveItemType*>*                 removeItem;
@property (strong) NSMutableArray<MPSEWSSuppressReadReceiptType*>*        suppressReadReceipt;
@property (strong) NSMutableArray<MPSEWSPostReplyItemType*>*              postReplyItem;
@property (strong) NSMutableArray<MPSEWSAcceptSharingInvitationType*>*    acceptSharingInvitation;


- (void) addItem:(MPSEWSItemType*) elem;
- (void) addMessage:(MPSEWSMessageType*) elem;
- (void) addCalendarItem:(MPSEWSCalendarItemType*) elem;
- (void) addContact:(MPSEWSContactItemType*) elem;
- (void) addDistributionList:(MPSEWSDistributionListType*) elem;
- (void) addMeetingMessage:(MPSEWSMeetingMessageType*) elem;
- (void) addMeetingRequest:(MPSEWSMeetingRequestMessageType*) elem;
- (void) addMeetingResponse:(MPSEWSMeetingResponseMessageType*) elem;
- (void) addMeetingCancellation:(MPSEWSMeetingCancellationMessageType*) elem;
- (void) addTask:(MPSEWSTaskType*) elem;
- (void) addPostItem:(MPSEWSPostItemType*) elem;
- (void) addReplyToItem:(MPSEWSReplyToItemType*) elem;
- (void) addForwardItem:(MPSEWSForwardItemType*) elem;
- (void) addReplyAllToItem:(MPSEWSReplyAllToItemType*) elem;
- (void) addAcceptItem:(MPSEWSAcceptItemType*) elem;
- (void) addTentativelyAcceptItem:(MPSEWSTentativelyAcceptItemType*) elem;
- (void) addDeclineItem:(MPSEWSDeclineItemType*) elem;
- (void) addCancelCalendarItem:(MPSEWSCancelCalendarItemType*) elem;
- (void) addRemoveItem:(MPSEWSRemoveItemType*) elem;
- (void) addSuppressReadReceipt:(MPSEWSSuppressReadReceiptType*) elem;
- (void) addPostReplyItem:(MPSEWSPostReplyItemType*) elem;
- (void) addAcceptSharingInvitation:(MPSEWSAcceptSharingInvitationType*) elem;
@end

