#import <Foundation/Foundation.h>
#import "MPSEWSSearchExpressionType.h"



@class MPSEWSSearchExpressionType;



/* MultipleOperandBooleanExpressionType */
@interface MPSEWSMultipleOperandBooleanExpressionType : MPSEWSSearchExpressionType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSSearchExpressionType* searchExpression;


@end

