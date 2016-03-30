#import <Foundation/Foundation.h>
#import "MPSEWSTwoOperandExpressionType.h"






/* IsEqualToType */
@interface MPSEWSIsEqualToType : MPSEWSTwoOperandExpressionType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSIsEqualToType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

