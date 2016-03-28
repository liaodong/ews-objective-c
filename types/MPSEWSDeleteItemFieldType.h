#import <Foundation/Foundation.h>
#import "MPSEWSItemChangeDescriptionType.h"






/* DeleteItemFieldType */
@interface MPSEWSDeleteItemFieldType : MPSEWSItemChangeDescriptionType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

