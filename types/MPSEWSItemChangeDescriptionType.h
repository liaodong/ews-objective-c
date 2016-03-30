#import <Foundation/Foundation.h>
#import "MPSEWSChangeDescriptionType.h"






/* ItemChangeDescriptionType */
@interface MPSEWSItemChangeDescriptionType : MPSEWSChangeDescriptionType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSItemChangeDescriptionType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

