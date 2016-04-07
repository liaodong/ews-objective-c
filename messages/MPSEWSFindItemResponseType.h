#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* FindItemResponseType */
@interface MPSEWSFindItemResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSFindItemResponseType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

