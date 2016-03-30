#import <Foundation/Foundation.h>
#import "MPSEWSTwoOperandExpressionType.h"






/* IsGreaterThanType */
@interface MPSEWSIsGreaterThanType : MPSEWSTwoOperandExpressionType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSIsGreaterThanType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

