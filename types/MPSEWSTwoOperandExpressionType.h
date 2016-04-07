#import <Foundation/Foundation.h>
#import "MPSEWSSearchExpressionType.h"



@class MPSEWSBasePathToElementType;
@class MPSEWSFieldURIOrConstantType;



/* TwoOperandExpressionType */
@interface MPSEWSTwoOperandExpressionType : MPSEWSSearchExpressionType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSTwoOperandExpressionType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSBasePathToElementType*  path;
@property (strong) MPSEWSFieldURIOrConstantType* fieldURIOrConstant;


@end

