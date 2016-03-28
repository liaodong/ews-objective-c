#import <Foundation/Foundation.h>
#import "EWSResponseMessageType.h"



@class EWSNotificationType;



/* GetEventsResponseMessageType */
@interface EWSGetEventsResponseMessageType : EWSResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSNotificationType* notification;


@end

