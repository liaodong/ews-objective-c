#import <Foundation/Foundation.h>
#import "EWSBaseResponseMessageType.h"






/* SubscribeResponseType */
@interface EWSSubscribeResponseType : EWSBaseResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

