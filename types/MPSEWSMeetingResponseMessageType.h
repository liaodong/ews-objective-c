#import <Foundation/Foundation.h>
#import "MPSEWSMeetingMessageType.h"






/* MeetingResponseMessageType */
@interface MPSEWSMeetingResponseMessageType : MPSEWSMeetingMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSMeetingResponseMessageType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

