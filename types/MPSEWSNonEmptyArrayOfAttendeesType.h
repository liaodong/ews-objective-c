#import <Foundation/Foundation.h>



@class MPSEWSAttendeeType;



/* NonEmptyArrayOfAttendeesType */
@interface MPSEWSNonEmptyArrayOfAttendeesType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSAttendeeType*>* attendee;


- (void) addAttendee:(MPSEWSAttendeeType*) elem;
@end

