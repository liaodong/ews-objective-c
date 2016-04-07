#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* SendItemResponseType */
@interface MPSEWSSendItemResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSendItemResponseType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

