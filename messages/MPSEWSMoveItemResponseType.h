#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* MoveItemResponseType */
@interface MPSEWSMoveItemResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSMoveItemResponseType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

