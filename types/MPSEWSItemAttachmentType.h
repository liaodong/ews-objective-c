#import <Foundation/Foundation.h>
#import "MPSEWSAttachmentType.h"



@class MPSEWSCalendarItemType;
@class MPSEWSContactItemType;
@class MPSEWSItemType;
@class MPSEWSMeetingCancellationMessageType;
@class MPSEWSMeetingMessageType;
@class MPSEWSMeetingRequestMessageType;
@class MPSEWSMeetingResponseMessageType;
@class MPSEWSMessageType;
@class MPSEWSPostItemType;
@class MPSEWSTaskType;



/* ItemAttachmentType */
@interface MPSEWSItemAttachmentType : MPSEWSAttachmentType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSItemAttachmentType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSItemType*                       item;
@property (strong) MPSEWSMessageType*                    message;
@property (strong) MPSEWSCalendarItemType*               calendarItem;
@property (strong) MPSEWSContactItemType*                contact;
@property (strong) MPSEWSMeetingMessageType*             meetingMessage;
@property (strong) MPSEWSMeetingRequestMessageType*      meetingRequest;
@property (strong) MPSEWSMeetingResponseMessageType*     meetingResponse;
@property (strong) MPSEWSMeetingCancellationMessageType* meetingCancellation;
@property (strong) MPSEWSTaskType*                       task;
@property (strong) MPSEWSPostItemType*                   postItem;


@end

