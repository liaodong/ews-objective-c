#import <Foundation/Foundation.h>
#import "MPSEWSSearchExpressionType.h"



@class MPSEWSSearchExpressionType;



/* MultipleOperandBooleanExpressionType */
@interface MPSEWSMultipleOperandBooleanExpressionType : MPSEWSSearchExpressionType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSMultipleOperandBooleanExpressionType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSSearchExpressionType* searchExpression;


@end

