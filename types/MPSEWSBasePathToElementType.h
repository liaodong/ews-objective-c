#import <Foundation/Foundation.h>






/* BasePathToElementType */
@interface MPSEWSBasePathToElementType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSBasePathToElementType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

