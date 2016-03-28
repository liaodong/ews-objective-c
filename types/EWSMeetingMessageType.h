#import <Foundation/Foundation.h>
#import "EWSMessageType.h"



@class EWSItemIdType;



/* MeetingMessageType */
@interface EWSMeetingMessageType : EWSMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSItemIdType* associatedCalendarItemId;
@property (strong) NSNumber*      isDelegated               /* xs:boolean */;
@property (strong) NSNumber*      isOutOfDate               /* xs:boolean */;
@property (strong) NSNumber*      hasBeenProcessed          /* xs:boolean */;
@property (strong) NSString*      responseType              /* EWSResponseTypeType */;
@property (strong) NSString*      uID                       /* xs:string */;
@property (strong) NSString*      recurrenceId              /* xs:dateTime */;
@property (strong) NSString*      dateTimeStamp             /* xs:dateTime */;


@end

