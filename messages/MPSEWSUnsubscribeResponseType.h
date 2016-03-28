#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* UnsubscribeResponseType */
@interface MPSEWSUnsubscribeResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

