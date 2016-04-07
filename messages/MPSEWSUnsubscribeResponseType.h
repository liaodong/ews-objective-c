#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* UnsubscribeResponseType */
@interface MPSEWSUnsubscribeResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSUnsubscribeResponseType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

