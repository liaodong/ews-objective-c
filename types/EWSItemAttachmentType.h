#import <Foundation/Foundation.h>
#import "EWSAttachmentType.h"



@class EWSCalendarItemType;
@class EWSContactItemType;
@class EWSItemType;
@class EWSMeetingCancellationMessageType;
@class EWSMeetingMessageType;
@class EWSMeetingRequestMessageType;
@class EWSMeetingResponseMessageType;
@class EWSMessageType;
@class EWSPostItemType;
@class EWSTaskType;



/* ItemAttachmentType */
@interface EWSItemAttachmentType : EWSAttachmentType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSItemType*                       item;
@property (strong) EWSMessageType*                    message;
@property (strong) EWSCalendarItemType*               calendarItem;
@property (strong) EWSContactItemType*                contact;
@property (strong) EWSMeetingMessageType*             meetingMessage;
@property (strong) EWSMeetingRequestMessageType*      meetingRequest;
@property (strong) EWSMeetingResponseMessageType*     meetingResponse;
@property (strong) EWSMeetingCancellationMessageType* meetingCancellation;
@property (strong) EWSTaskType*                       task;
@property (strong) EWSPostItemType*                   postItem;


@end

