#import <Foundation/Foundation.h>
#import "EWSSearchExpressionType.h"



@class EWSSearchExpressionType;



/* MultipleOperandBooleanExpressionType */
@interface EWSMultipleOperandBooleanExpressionType : EWSSearchExpressionType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSSearchExpressionType* searchExpression;


@end

