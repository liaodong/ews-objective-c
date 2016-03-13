#import <Foundation/Foundation.h>




#import "../types/EWSNotificationType.h"
#import "EWSResponseMessageType.h"



/* GetEventsResponseMessageType */
@interface EWSGetEventsResponseMessageType : EWSResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSNotificationType* notification;


@end

