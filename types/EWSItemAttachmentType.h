#import <Foundation/Foundation.h>




#import "EWSCalendarItemType.h"
#import "EWSMeetingMessageType.h"
#import "EWSContactItemType.h"
#import "EWSItemType.h"
#import "EWSMeetingRequestMessageType.h"
#import "EWSMeetingResponseMessageType.h"
#import "EWSMeetingCancellationMessageType.h"
#import "EWSMessageType.h"
#import "EWSPostItemType.h"
#import "EWSTaskType.h"
#import "EWSAttachmentType.h"



/* ItemAttachmentType */
@interface EWSItemAttachmentType : EWSAttachmentType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSItemType*                       item;
@property (retain) EWSMessageType*                    message;
@property (retain) EWSCalendarItemType*               calendarItem;
@property (retain) EWSContactItemType*                contact;
@property (retain) EWSMeetingMessageType*             meetingMessage;
@property (retain) EWSMeetingRequestMessageType*      meetingRequest;
@property (retain) EWSMeetingResponseMessageType*     meetingResponse;
@property (retain) EWSMeetingCancellationMessageType* meetingCancellation;
@property (retain) EWSTaskType*                       task;
@property (retain) EWSPostItemType*                   postItem;


@end

