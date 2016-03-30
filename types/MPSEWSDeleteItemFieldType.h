#import <Foundation/Foundation.h>
#import "MPSEWSItemChangeDescriptionType.h"






/* DeleteItemFieldType */
@interface MPSEWSDeleteItemFieldType : MPSEWSItemChangeDescriptionType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSDeleteItemFieldType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

