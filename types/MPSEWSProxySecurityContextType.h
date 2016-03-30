#import <Foundation/Foundation.h>
#import "MPSEWSBase64BinaryType.h"






/* ProxySecurityContextType */
@interface MPSEWSProxySecurityContextType : MPSEWSBase64BinaryType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSProxySecurityContextType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

