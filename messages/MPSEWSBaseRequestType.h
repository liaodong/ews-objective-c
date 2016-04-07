#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* BaseRequestType */
@interface MPSEWSBaseRequestType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSBaseRequestType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

