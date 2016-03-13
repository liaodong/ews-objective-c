#import <Foundation/Foundation.h>




#import "EWSBaseResponseMessageType.h"



/* SendNotificationResponseType */
@interface EWSSendNotificationResponseType : EWSBaseResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

