#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* SubscribeResponseType */
@interface MPSEWSSubscribeResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

