#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* SendNotificationResponseType */
@interface MPSEWSSendNotificationResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

