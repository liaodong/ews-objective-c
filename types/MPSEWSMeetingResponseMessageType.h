#import <Foundation/Foundation.h>
#import "MPSEWSMeetingMessageType.h"






/* MeetingResponseMessageType */
@interface MPSEWSMeetingResponseMessageType : MPSEWSMeetingMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

