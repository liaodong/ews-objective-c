#import <Foundation/Foundation.h>
#import "MPSEWSTwoOperandExpressionType.h"






/* IsLessThanOrEqualToType */
@interface MPSEWSIsLessThanOrEqualToType : MPSEWSTwoOperandExpressionType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSIsLessThanOrEqualToType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

