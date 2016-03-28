#import <Foundation/Foundation.h>
#import "EWSAttendeeConflictData.h"






/* IndividualAttendeeConflictData */
@interface EWSIndividualAttendeeConflictData : EWSAttendeeConflictData

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* busyType  /* EWSLegacyFreeBusyType */;


@end

