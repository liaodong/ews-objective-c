#import <Foundation/Foundation.h>






/* RequestServerVersionType */
@interface MPSEWSRequestServerVersionType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSRequestServerVersionType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

