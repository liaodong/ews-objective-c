#import <Foundation/Foundation.h>




#import "EWSMultipleOperandBooleanExpressionType.h"



/* OrType */
@interface EWSOrType : EWSMultipleOperandBooleanExpressionType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

