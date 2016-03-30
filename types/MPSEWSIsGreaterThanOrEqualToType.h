#import <Foundation/Foundation.h>
#import "MPSEWSTwoOperandExpressionType.h"






/* IsGreaterThanOrEqualToType */
@interface MPSEWSIsGreaterThanOrEqualToType : MPSEWSTwoOperandExpressionType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSIsGreaterThanOrEqualToType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

