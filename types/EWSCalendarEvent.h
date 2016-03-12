#import <Foundation/Foundation.h>




#import "../handlers/EWSDateTimeTypeHandler.h"
#import "EWSLegacyFreeBusyType.h"
#import "EWSCalendarEventDetails.h"



/* CalendarEvent */
@interface EWSCalendarEvent : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString*                startTime             /* xs:dateTime */;
@property (retain) NSString*                endTime               /* xs:dateTime */;
@property (retain) NSString*                busyType              /* EWSLegacyFreeBusyType */;
@property (retain) EWSCalendarEventDetails* calendarEventDetails;


@end

