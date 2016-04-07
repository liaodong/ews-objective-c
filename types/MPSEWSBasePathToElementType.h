#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* BasePathToElementType */
@interface MPSEWSBasePathToElementType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSBasePathToElementType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

