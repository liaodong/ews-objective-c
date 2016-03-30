#import <Foundation/Foundation.h>



@class MPSEWSCalendarEventDetails;



/* CalendarEvent */
@interface MPSEWSCalendarEvent : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSCalendarEvent*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                   startTime             /* xs:dateTime */;
@property (strong) NSString*                   endTime               /* xs:dateTime */;
@property (strong) NSString*                   busyType              /* MPSEWSLegacyFreeBusyType */;
@property (strong) MPSEWSCalendarEventDetails* calendarEventDetails;


@end

