#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* GetServerTimeZonesResponseType */
@interface MPSEWSGetServerTimeZonesResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSGetServerTimeZonesResponseType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

