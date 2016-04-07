#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* DeleteItemResponseType */
@interface MPSEWSDeleteItemResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSDeleteItemResponseType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

