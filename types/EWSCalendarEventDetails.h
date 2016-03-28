#import <Foundation/Foundation.h>






/* CalendarEventDetails */
@interface EWSCalendarEventDetails : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* iD             /* xs:string */;
@property (strong) NSString* subject        /* xs:string */;
@property (strong) NSString* location       /* xs:string */;
@property (strong) NSNumber* isMeeting      /* xs:boolean */;
@property (strong) NSNumber* isRecurring    /* xs:boolean */;
@property (strong) NSNumber* isException    /* xs:boolean */;
@property (strong) NSNumber* isReminderSet  /* xs:boolean */;
@property (strong) NSNumber* isPrivate      /* xs:boolean */;


@end

