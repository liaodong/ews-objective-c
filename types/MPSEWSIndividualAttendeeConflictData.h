#import <Foundation/Foundation.h>
#import "MPSEWSAttendeeConflictData.h"






/* IndividualAttendeeConflictData */
@interface MPSEWSIndividualAttendeeConflictData : MPSEWSAttendeeConflictData

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* busyType  /* MPSEWSLegacyFreeBusyType */;


@end

