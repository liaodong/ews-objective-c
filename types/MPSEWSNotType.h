#import <Foundation/Foundation.h>
#import "MPSEWSSearchExpressionType.h"



@class MPSEWSSearchExpressionType;



/* NotType */
@interface MPSEWSNotType : MPSEWSSearchExpressionType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSSearchExpressionType* searchExpression;


@end

