#import <Foundation/Foundation.h>
#import "EWSBasePermissionType.h"






/* CalendarPermissionType */
@interface EWSCalendarPermissionType : EWSBasePermissionType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* readItems                /* EWSCalendarPermissionReadAccessType */;
@property (strong) NSString* calendarPermissionLevel  /* EWSCalendarPermissionLevelType */;


@end

