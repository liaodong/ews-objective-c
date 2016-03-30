#import <Foundation/Foundation.h>
#import "MPSEWSMeetingMessageType.h"






/* MeetingResponseMessageType */
@interface MPSEWSMeetingResponseMessageType : MPSEWSMeetingMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSMeetingResponseMessageType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

