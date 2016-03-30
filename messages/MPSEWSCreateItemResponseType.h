#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* CreateItemResponseType */
@interface MPSEWSCreateItemResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSCreateItemResponseType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

