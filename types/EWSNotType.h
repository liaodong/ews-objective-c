#import <Foundation/Foundation.h>
#import "EWSSearchExpressionType.h"



@class EWSSearchExpressionType;



/* NotType */
@interface EWSNotType : EWSSearchExpressionType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSSearchExpressionType* searchExpression;


@end

