#import <Foundation/Foundation.h>
#import "EWSResponseMessageType.h"



@class EWSNotificationType;



/* SendNotificationResponseMessageType */
@interface EWSSendNotificationResponseMessageType : EWSResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSNotificationType* notification;


@end

