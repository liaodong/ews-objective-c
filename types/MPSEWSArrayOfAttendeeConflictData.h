#import <Foundation/Foundation.h>



@class MPSEWSGroupAttendeeConflictData;
@class MPSEWSIndividualAttendeeConflictData;
@class MPSEWSTooBigGroupAttendeeConflictData;
@class MPSEWSUnknownAttendeeConflictData;



/* ArrayOfAttendeeConflictData */
@interface MPSEWSArrayOfAttendeeConflictData : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSUnknownAttendeeConflictData*     unknownAttendeeConflictData;
@property (strong) MPSEWSIndividualAttendeeConflictData*  individualAttendeeConflictData;
@property (strong) MPSEWSTooBigGroupAttendeeConflictData* tooBigGroupAttendeeConflictData;
@property (strong) MPSEWSGroupAttendeeConflictData*       groupAttendeeConflictData;


@end

