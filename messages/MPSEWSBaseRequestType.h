#import <Foundation/Foundation.h>






/* BaseRequestType */
@interface MPSEWSBaseRequestType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSBaseRequestType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

