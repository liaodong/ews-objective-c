#import <Foundation/Foundation.h>






/* BaseRequestType */
@interface MPSEWSBaseRequestType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

