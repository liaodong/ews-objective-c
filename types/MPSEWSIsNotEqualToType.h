#import <Foundation/Foundation.h>
#import "MPSEWSTwoOperandExpressionType.h"






/* IsNotEqualToType */
@interface MPSEWSIsNotEqualToType : MPSEWSTwoOperandExpressionType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSIsNotEqualToType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

