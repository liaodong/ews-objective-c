#import <Foundation/Foundation.h>




#import "EWSMultipleOperandBooleanExpressionType.h"



/* AndType */
@interface EWSAndType : EWSMultipleOperandBooleanExpressionType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

