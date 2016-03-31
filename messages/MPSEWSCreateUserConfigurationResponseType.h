#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* CreateUserConfigurationResponseType */
@interface MPSEWSCreateUserConfigurationResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSCreateUserConfigurationResponseType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

