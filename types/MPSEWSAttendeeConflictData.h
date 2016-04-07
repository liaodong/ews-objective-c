#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* AttendeeConflictData */
@interface MPSEWSAttendeeConflictData : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSAttendeeConflictData*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

