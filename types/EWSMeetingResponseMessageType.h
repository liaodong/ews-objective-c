#import <Foundation/Foundation.h>
#import "EWSMeetingMessageType.h"






/* MeetingResponseMessageType */
@interface EWSMeetingResponseMessageType : EWSMeetingMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

