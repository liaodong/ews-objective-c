#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSEmailAddress;



/* MailboxData */
@interface MPSEWSMailboxData : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSMailboxData*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSEmailAddress* email;
@property (strong) NSString*           attendeeType      /* MPSEWSMeetingAttendeeType */;
@property (strong) NSNumber*           excludeConflicts  /* xs:boolean */;


@end

