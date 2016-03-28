#import <Foundation/Foundation.h>



@class EWSSearchExpressionType;



/* RestrictionType */
@interface EWSRestrictionType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSSearchExpressionType* searchExpression;


@end

