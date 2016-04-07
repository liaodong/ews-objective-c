#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* ConvertIdResponseType */
@interface MPSEWSConvertIdResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSConvertIdResponseType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

