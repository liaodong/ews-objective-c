#import <Foundation/Foundation.h>






/* BaseItemIdType */
@interface MPSEWSBaseItemIdType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSBaseItemIdType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

