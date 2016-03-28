#import <Foundation/Foundation.h>



@class EWSGroupAttendeeConflictData;
@class EWSIndividualAttendeeConflictData;
@class EWSTooBigGroupAttendeeConflictData;
@class EWSUnknownAttendeeConflictData;



/* ArrayOfAttendeeConflictData */
@interface EWSArrayOfAttendeeConflictData : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSUnknownAttendeeConflictData*     unknownAttendeeConflictData;
@property (strong) EWSIndividualAttendeeConflictData*  individualAttendeeConflictData;
@property (strong) EWSTooBigGroupAttendeeConflictData* tooBigGroupAttendeeConflictData;
@property (strong) EWSGroupAttendeeConflictData*       groupAttendeeConflictData;


@end

