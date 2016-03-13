#import <Foundation/Foundation.h>




#import "EWSCalendarPermissionLevelType.h"
#import "EWSCalendarPermissionReadAccessType.h"
#import "EWSBasePermissionType.h"



/* CalendarPermissionType */
@interface EWSCalendarPermissionType : EWSBasePermissionType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* readItems                /* EWSCalendarPermissionReadAccessType */;
@property (retain) NSString* calendarPermissionLevel  /* EWSCalendarPermissionLevelType */;


@end

