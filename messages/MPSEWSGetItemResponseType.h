#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* GetItemResponseType */
@interface MPSEWSGetItemResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSGetItemResponseType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

