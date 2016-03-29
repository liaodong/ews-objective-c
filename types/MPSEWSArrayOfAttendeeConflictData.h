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

@property (strong) NSMutableArray<MPSEWSUnknownAttendeeConflictData*>*     unknownAttendeeConflictData;
@property (strong) NSMutableArray<MPSEWSIndividualAttendeeConflictData*>*  individualAttendeeConflictData;
@property (strong) NSMutableArray<MPSEWSTooBigGroupAttendeeConflictData*>* tooBigGroupAttendeeConflictData;
@property (strong) NSMutableArray<MPSEWSGroupAttendeeConflictData*>*       groupAttendeeConflictData;


- (void) addUnknownAttendeeConflictData:(MPSEWSUnknownAttendeeConflictData*) elem;
- (void) addIndividualAttendeeConflictData:(MPSEWSIndividualAttendeeConflictData*) elem;
- (void) addTooBigGroupAttendeeConflictData:(MPSEWSTooBigGroupAttendeeConflictData*) elem;
- (void) addGroupAttendeeConflictData:(MPSEWSGroupAttendeeConflictData*) elem;
@end

