#import <Foundation/Foundation.h>






/* BaseEmailAddressType */
@interface EWSBaseEmailAddressType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

