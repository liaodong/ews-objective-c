#import <Foundation/Foundation.h>
#import "EWSAttendeeConflictData.h"






/* GroupAttendeeConflictData */
@interface EWSGroupAttendeeConflictData : EWSAttendeeConflictData

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber* numberOfMembers              /* xs:int */;
@property (strong) NSNumber* numberOfMembersAvailable     /* xs:int */;
@property (strong) NSNumber* numberOfMembersWithConflict  /* xs:int */;
@property (strong) NSNumber* numberOfMembersWithNoData    /* xs:int */;


@end

