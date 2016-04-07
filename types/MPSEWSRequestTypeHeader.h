#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* RequestTypeHeader */
@interface MPSEWSRequestTypeHeader : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSRequestTypeHeader*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* requestType  /* MPSEWSAvailabilityProxyRequestType */;


@end

