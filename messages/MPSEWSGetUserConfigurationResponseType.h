#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* GetUserConfigurationResponseType */
@interface MPSEWSGetUserConfigurationResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSGetUserConfigurationResponseType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

