#import <Foundation/Foundation.h>




#import "EWSEmailAddress.h"
#import "../handlers/EWSBooleanTypeHandler.h"
#import "EWSMeetingAttendeeType.h"



/* MailboxData */
@interface EWSMailboxData : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSEmailAddress* email;
@property (retain) NSString*        attendeeType      /* EWSMeetingAttendeeType */;
@property (retain) NSNumber*        excludeConflicts  /* xs:boolean */;


@end

