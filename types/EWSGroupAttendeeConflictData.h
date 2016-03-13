#import <Foundation/Foundation.h>




#import "../handlers/EWSIntegerTypeHandler.h"
#import "EWSAttendeeConflictData.h"



/* GroupAttendeeConflictData */
@interface EWSGroupAttendeeConflictData : EWSAttendeeConflictData

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSNumber* numberOfMembers              /* xs:int */;
@property (retain) NSNumber* numberOfMembersAvailable     /* xs:int */;
@property (retain) NSNumber* numberOfMembersWithConflict  /* xs:int */;
@property (retain) NSNumber* numberOfMembersWithNoData    /* xs:int */;


@end

