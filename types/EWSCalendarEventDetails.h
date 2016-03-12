#import <Foundation/Foundation.h>




#import "../handlers/EWSStringTypeHandler.h"
#import "../handlers/EWSBooleanTypeHandler.h"



/* CalendarEventDetails */
@interface EWSCalendarEventDetails : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* iD             /* xs:string */;
@property (retain) NSString* subject        /* xs:string */;
@property (retain) NSString* location       /* xs:string */;
@property (retain) NSNumber* isMeeting      /* xs:boolean */;
@property (retain) NSNumber* isRecurring    /* xs:boolean */;
@property (retain) NSNumber* isException    /* xs:boolean */;
@property (retain) NSNumber* isReminderSet  /* xs:boolean */;
@property (retain) NSNumber* isPrivate      /* xs:boolean */;


@end

