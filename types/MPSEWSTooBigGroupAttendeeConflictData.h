#import <Foundation/Foundation.h>
#import "MPSEWSAttendeeConflictData.h"






/* TooBigGroupAttendeeConflictData */
@interface MPSEWSTooBigGroupAttendeeConflictData : MPSEWSAttendeeConflictData

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSTooBigGroupAttendeeConflictData*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

