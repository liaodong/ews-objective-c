#import <Foundation/Foundation.h>




#import "../types/EWSSearchExpressionType.h"



/* RestrictionType */
@interface EWSRestrictionType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSSearchExpressionType* searchExpression;


@end

