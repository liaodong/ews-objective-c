#import <Foundation/Foundation.h>




#import "../types/EWSCalendarItemType.h"
#import "../types/EWSContactItemType.h"
#import "../types/EWSDistributionListType.h"
#import "../types/EWSItemType.h"
#import "../types/EWSMeetingCancellationMessageType.h"
#import "../types/EWSMeetingMessageType.h"
#import "../types/EWSMeetingRequestMessageType.h"
#import "../types/EWSMeetingResponseMessageType.h"
#import "../types/EWSMessageType.h"
#import "../types/EWSPostItemType.h"
#import "../types/EWSTaskType.h"
#import "EWSItemChangeDescriptionType.h"



/* AppendToItemFieldType */
@interface EWSAppendToItemFieldType : EWSItemChangeDescriptionType

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

