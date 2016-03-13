#import <Foundation/Foundation.h>




#import "../types/EWSBasePathToElementType.h"
#import "../types/EWSFieldURIOrConstantType.h"
#import "EWSSearchExpressionType.h"



/* TwoOperandExpressionType */
@interface EWSTwoOperandExpressionType : EWSSearchExpressionType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSBasePathToElementType*  path;
@property (retain) EWSFieldURIOrConstantType* fieldURIOrConstant;


@end

