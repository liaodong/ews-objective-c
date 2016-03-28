#import <Foundation/Foundation.h>
#import "EWSItemChangeDescriptionType.h"



@class EWSCalendarItemType;
@class EWSContactItemType;
@class EWSDistributionListType;
@class EWSItemType;
@class EWSMeetingCancellationMessageType;
@class EWSMeetingMessageType;
@class EWSMeetingRequestMessageType;
@class EWSMeetingResponseMessageType;
@class EWSMessageType;
@class EWSPostItemType;
@class EWSTaskType;



/* SetItemFieldType */
@interface EWSSetItemFieldType : EWSItemChangeDescriptionType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSItemType*                       item;
@property (strong) EWSMessageType*                    message;
@property (strong) EWSCalendarItemType*               calendarItem;
@property (strong) EWSContactItemType*                contact;
@property (strong) EWSDistributionListType*           distributionList;
@property (strong) EWSMeetingMessageType*             meetingMessage;
@property (strong) EWSMeetingRequestMessageType*      meetingRequest;
@property (strong) EWSMeetingResponseMessageType*     meetingResponse;
@property (strong) EWSMeetingCancellationMessageType* meetingCancellation;
@property (strong) EWSTaskType*                       task;
@property (strong) EWSPostItemType*                   postItem;


@end

