#import <Foundation/Foundation.h>
#import "MPSEWSMultipleOperandBooleanExpressionType.h"






/* AndType */
@interface MPSEWSAndType : MPSEWSMultipleOperandBooleanExpressionType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

