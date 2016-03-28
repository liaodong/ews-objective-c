#import <Foundation/Foundation.h>



@class EWSAttendeeType;



/* NonEmptyArrayOfAttendeesType */
@interface EWSNonEmptyArrayOfAttendeesType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<EWSAttendeeType*>* attendee;


- (void) addAttendee:(EWSAttendeeType*) elem;
@end

