#import <Foundation/Foundation.h>
#import "MPSEWSResponseObjectType.h"






/* SmartResponseBaseType */
@interface MPSEWSSmartResponseBaseType : MPSEWSResponseObjectType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

