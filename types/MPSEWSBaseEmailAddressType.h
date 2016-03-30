#import <Foundation/Foundation.h>






/* BaseEmailAddressType */
@interface MPSEWSBaseEmailAddressType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSBaseEmailAddressType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

