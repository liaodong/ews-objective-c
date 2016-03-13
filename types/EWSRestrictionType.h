#import <Foundation/Foundation.h>




#import "EWSSearchExpressionType.h"



/* RestrictionType */
@interface EWSRestrictionType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSSearchExpressionType* searchExpression;


@end
