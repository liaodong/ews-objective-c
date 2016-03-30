#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* SubscribeResponseType */
@interface MPSEWSSubscribeResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSubscribeResponseType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

