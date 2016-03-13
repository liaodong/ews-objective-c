#import <Foundation/Foundation.h>




#import "../types/EWSLegacyFreeBusyType.h"
#import "EWSAttendeeConflictData.h"



/* IndividualAttendeeConflictData */
@interface EWSIndividualAttendeeConflictData : EWSAttendeeConflictData

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* busyType  /* EWSLegacyFreeBusyType */;


@end

