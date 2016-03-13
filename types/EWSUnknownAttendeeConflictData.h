#import <Foundation/Foundation.h>




#import "EWSAttendeeConflictData.h"



/* UnknownAttendeeConflictData */
@interface EWSUnknownAttendeeConflictData : EWSAttendeeConflictData

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

