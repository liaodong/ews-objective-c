#import <Foundation/Foundation.h>






/* AttendeeConflictData */
@interface MPSEWSAttendeeConflictData : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSAttendeeConflictData*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

