#import <Foundation/Foundation.h>



@class EWSEmailAddress;



/* MailboxData */
@interface EWSMailboxData : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSEmailAddress* email;
@property (strong) NSString*        attendeeType      /* EWSMeetingAttendeeType */;
@property (strong) NSNumber*        excludeConflicts  /* xs:boolean */;


@end

