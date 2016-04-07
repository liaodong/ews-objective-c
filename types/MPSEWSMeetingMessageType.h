#import <Foundation/Foundation.h>
#import "MPSEWSMessageType.h"



@class MPSEWSItemIdType;



/* MeetingMessageType */
@interface MPSEWSMeetingMessageType : MPSEWSMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSMeetingMessageType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSItemIdType* associatedCalendarItemId;
@property (strong) NSNumber*         isDelegated               /* xs:boolean */;
@property (strong) NSNumber*         isOutOfDate               /* xs:boolean */;
@property (strong) NSNumber*         hasBeenProcessed          /* xs:boolean */;
@property (strong) NSString*         responseType              /* MPSEWSResponseTypeType */;
@property (strong) NSString*         uID                       /* xs:string */;
@property (strong) NSString*         recurrenceId              /* xs:dateTime */;
@property (strong) NSString*         dateTimeStamp             /* xs:dateTime */;


@end

