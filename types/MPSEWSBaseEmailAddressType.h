#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* BaseEmailAddressType */
@interface MPSEWSBaseEmailAddressType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSBaseEmailAddressType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

