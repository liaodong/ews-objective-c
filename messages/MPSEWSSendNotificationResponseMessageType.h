#import <Foundation/Foundation.h>
#import "MPSEWSResponseMessageType.h"



@class MPSEWSNotificationType;



/* SendNotificationResponseMessageType */
@interface MPSEWSSendNotificationResponseMessageType : MPSEWSResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSNotificationType* notification;


@end

