#import <Foundation/Foundation.h>
#import "MPSEWSAttendeeConflictData.h"






/* UnknownAttendeeConflictData */
@interface MPSEWSUnknownAttendeeConflictData : MPSEWSAttendeeConflictData

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSUnknownAttendeeConflictData*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

