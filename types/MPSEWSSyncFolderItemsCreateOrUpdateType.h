#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



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



/* SyncFolderItemsCreateOrUpdateType */
@interface MPSEWSSyncFolderItemsCreateOrUpdateType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSyncFolderItemsCreateOrUpdateType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSItemType*                       item;
@property (strong) MPSEWSMessageType*                    message;
@property (strong) MPSEWSCalendarItemType*               calendarItem;
@property (strong) MPSEWSContactItemType*                contact;
@property (strong) MPSEWSDistributionListType*           distributionList;
@property (strong) MPSEWSMeetingMessageType*             meetingMessage;
@property (strong) MPSEWSMeetingRequestMessageType*      meetingRequest;
@property (strong) MPSEWSMeetingResponseMessageType*     meetingResponse;
@property (strong) MPSEWSMeetingCancellationMessageType* meetingCancellation;
@property (strong) MPSEWSTaskType*                       task;
@property (strong) MPSEWSPostItemType*                   postItem;


@end

