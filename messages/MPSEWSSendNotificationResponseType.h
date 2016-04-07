#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* SendNotificationResponseType */
@interface MPSEWSSendNotificationResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSendNotificationResponseType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

