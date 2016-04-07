#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSAttendeeType;



/* NonEmptyArrayOfAttendeesType */
@interface MPSEWSNonEmptyArrayOfAttendeesType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfAttendeesType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSAttendeeType*>* attendee;


- (void) addAttendee:(MPSEWSAttendeeType*) elem;
@end

