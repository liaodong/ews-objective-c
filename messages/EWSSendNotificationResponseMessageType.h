#import <Foundation/Foundation.h>




#import "../types/EWSNotificationType.h"
#import "EWSResponseMessageType.h"



/* SendNotificationResponseMessageType */
@interface EWSSendNotificationResponseMessageType : EWSResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSNotificationType* notification;


@end

