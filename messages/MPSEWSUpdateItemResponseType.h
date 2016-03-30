#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* UpdateItemResponseType */
@interface MPSEWSUpdateItemResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSUpdateItemResponseType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

