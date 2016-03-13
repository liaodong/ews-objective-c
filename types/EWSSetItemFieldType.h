#import <Foundation/Foundation.h>




#import "EWSCalendarItemType.h"
#import "EWSMeetingMessageType.h"
#import "EWSPostItemType.h"
#import "EWSContactItemType.h"
#import "EWSItemType.h"
#import "EWSMeetingRequestMessageType.h"
#import "EWSDistributionListType.h"
#import "EWSMeetingResponseMessageType.h"
#import "EWSMessageType.h"
#import "EWSMeetingCancellationMessageType.h"
#import "EWSTaskType.h"
#import "EWSItemChangeDescriptionType.h"



/* SetItemFieldType */
@interface EWSSetItemFieldType : EWSItemChangeDescriptionType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSItemType*                       item;
@property (retain) EWSMessageType*                    message;
@property (retain) EWSCalendarItemType*               calendarItem;
@property (retain) EWSContactItemType*                contact;
@property (retain) EWSDistributionListType*           distributionList;
@property (retain) EWSMeetingMessageType*             meetingMessage;
@property (retain) EWSMeetingRequestMessageType*      meetingRequest;
@property (retain) EWSMeetingResponseMessageType*     meetingResponse;
@property (retain) EWSMeetingCancellationMessageType* meetingCancellation;
@property (retain) EWSTaskType*                       task;
@property (retain) EWSPostItemType*                   postItem;


@end

