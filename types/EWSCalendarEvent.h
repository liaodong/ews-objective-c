#import <Foundation/Foundation.h>



@class EWSCalendarEventDetails;



/* CalendarEvent */
@interface EWSCalendarEvent : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                startTime             /* xs:dateTime */;
@property (strong) NSString*                endTime               /* xs:dateTime */;
@property (strong) NSString*                busyType              /* EWSLegacyFreeBusyType */;
@property (strong) EWSCalendarEventDetails* calendarEventDetails;


@end

