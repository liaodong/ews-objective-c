#import <Foundation/Foundation.h>
#import "MPSEWSAttendeeConflictData.h"






/* GroupAttendeeConflictData */
@interface MPSEWSGroupAttendeeConflictData : MPSEWSAttendeeConflictData

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSGroupAttendeeConflictData*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber* numberOfMembers              /* xs:int */;
@property (strong) NSNumber* numberOfMembersAvailable     /* xs:int */;
@property (strong) NSNumber* numberOfMembersWithConflict  /* xs:int */;
@property (strong) NSNumber* numberOfMembersWithNoData    /* xs:int */;


@end

