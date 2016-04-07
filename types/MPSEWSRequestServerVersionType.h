#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* RequestServerVersionType */
@interface MPSEWSRequestServerVersionType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSRequestServerVersionType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

