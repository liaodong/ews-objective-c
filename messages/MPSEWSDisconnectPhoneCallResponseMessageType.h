#import <Foundation/Foundation.h>
#import "MPSEWSResponseMessageType.h"






/* DisconnectPhoneCallResponseMessageType */
@interface MPSEWSDisconnectPhoneCallResponseMessageType : MPSEWSResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSDisconnectPhoneCallResponseMessageType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

