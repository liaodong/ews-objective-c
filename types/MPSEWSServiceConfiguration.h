#import <Foundation/Foundation.h>






/* ServiceConfiguration */
@interface MPSEWSServiceConfiguration : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSServiceConfiguration*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

