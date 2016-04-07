#import <Foundation/Foundation.h>
#import "MPSEWSMultipleOperandBooleanExpressionType.h"






/* OrType */
@interface MPSEWSOrType : MPSEWSMultipleOperandBooleanExpressionType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSOrType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

