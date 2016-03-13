#import <Foundation/Foundation.h>




#import "../handlers/EWSBooleanTypeHandler.h"
#import "../handlers/EWSDateTimeTypeHandler.h"
#import "../handlers/EWSStringTypeHandler.h"
#import "../types/EWSItemIdType.h"
#import "../types/EWSResponseTypeType.h"
#import "EWSMessageType.h"



/* MeetingMessageType */
@interface EWSMeetingMessageType : EWSMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSItemIdType* associatedCalendarItemId;
@property (retain) NSNumber*      isDelegated               /* xs:boolean */;
@property (retain) NSNumber*      isOutOfDate               /* xs:boolean */;
@property (retain) NSNumber*      hasBeenProcessed          /* xs:boolean */;
@property (retain) NSString*      responseType              /* EWSResponseTypeType */;
@property (retain) NSString*      uID                       /* xs:string */;
@property (retain) NSString*      recurrenceId              /* xs:dateTime */;
@property (retain) NSString*      dateTimeStamp             /* xs:dateTime */;


@end

