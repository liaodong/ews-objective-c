#import <Foundation/Foundation.h>
#import "MPSEWSBasePermissionType.h"






/* CalendarPermissionType */
@interface MPSEWSCalendarPermissionType : MPSEWSBasePermissionType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSCalendarPermissionType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* readItems                /* MPSEWSCalendarPermissionReadAccessType */;
@property (strong) NSString* calendarPermissionLevel  /* MPSEWSCalendarPermissionLevelType */;


@end

