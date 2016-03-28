#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* FindItemResponseType */
@interface MPSEWSFindItemResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

