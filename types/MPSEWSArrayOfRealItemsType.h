#import <Foundation/Foundation.h>



@class MPSEWSCalendarItemType;
@class MPSEWSContactItemType;
@class MPSEWSDistributionListType;
@class MPSEWSItemType;
@class MPSEWSMeetingCancellationMessageType;
@class MPSEWSMeetingMessageType;
@class MPSEWSMeetingRequestMessageType;
@class MPSEWSMeetingResponseMessageType;
@class MPSEWSMessageType;
@class MPSEWSPostItemType;
@class MPSEWSTaskType;



/* ArrayOfRealItemsType */
@interface MPSEWSArrayOfRealItemsType : NSObject

+ (void) initialize;

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
@end

