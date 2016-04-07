#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* BaseItemIdType */
@interface MPSEWSBaseItemIdType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSBaseItemIdType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

