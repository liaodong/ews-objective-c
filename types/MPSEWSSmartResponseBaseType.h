#import <Foundation/Foundation.h>
#import "MPSEWSResponseObjectType.h"






/* SmartResponseBaseType */
@interface MPSEWSSmartResponseBaseType : MPSEWSResponseObjectType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSmartResponseBaseType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

