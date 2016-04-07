#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* UpdateUserConfigurationResponseType */
@interface MPSEWSUpdateUserConfigurationResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSUpdateUserConfigurationResponseType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

