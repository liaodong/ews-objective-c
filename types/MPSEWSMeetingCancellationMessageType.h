#import <Foundation/Foundation.h>
#import "MPSEWSMeetingMessageType.h"






/* MeetingCancellationMessageType */
@interface MPSEWSMeetingCancellationMessageType : MPSEWSMeetingMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

