#import <Foundation/Foundation.h>






/* SearchExpressionType */
@interface MPSEWSSearchExpressionType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSearchExpressionType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

