#import <Foundation/Foundation.h>
#import "EWSSearchExpressionType.h"



@class EWSBasePathToElementType;
@class EWSFieldURIOrConstantType;



/* TwoOperandExpressionType */
@interface EWSTwoOperandExpressionType : EWSSearchExpressionType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSBasePathToElementType*  path;
@property (strong) EWSFieldURIOrConstantType* fieldURIOrConstant;


@end

