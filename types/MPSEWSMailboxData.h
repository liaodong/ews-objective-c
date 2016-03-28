#import <Foundation/Foundation.h>



@class MPSEWSEmailAddress;



/* MailboxData */
@interface MPSEWSMailboxData : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSEmailAddress* email;
@property (strong) NSString*           attendeeType      /* MPSEWSMeetingAttendeeType */;
@property (strong) NSNumber*           excludeConflicts  /* xs:boolean */;


@end

