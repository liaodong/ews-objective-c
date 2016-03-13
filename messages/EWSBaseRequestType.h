#import <Foundation/Foundation.h>







/* BaseRequestType */
@interface EWSBaseRequestType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

