#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* ResolveNamesResponseType */
@interface MPSEWSResolveNamesResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSResolveNamesResponseType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

