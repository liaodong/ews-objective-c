#import <Foundation/Foundation.h>




#import "EWSMeetingMessageType.h"



/* MeetingCancellationMessageType */
@interface EWSMeetingCancellationMessageType : EWSMeetingMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

