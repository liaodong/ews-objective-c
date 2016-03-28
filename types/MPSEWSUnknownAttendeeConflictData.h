#import <Foundation/Foundation.h>
#import "MPSEWSAttendeeConflictData.h"






/* UnknownAttendeeConflictData */
@interface MPSEWSUnknownAttendeeConflictData : MPSEWSAttendeeConflictData

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

