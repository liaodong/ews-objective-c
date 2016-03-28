#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* SendItemResponseType */
@interface MPSEWSSendItemResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

