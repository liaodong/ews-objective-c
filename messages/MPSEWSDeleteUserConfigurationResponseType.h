#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* DeleteUserConfigurationResponseType */
@interface MPSEWSDeleteUserConfigurationResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSDeleteUserConfigurationResponseType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

