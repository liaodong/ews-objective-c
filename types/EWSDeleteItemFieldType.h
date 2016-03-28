#import <Foundation/Foundation.h>
#import "EWSItemChangeDescriptionType.h"






/* DeleteItemFieldType */
@interface EWSDeleteItemFieldType : EWSItemChangeDescriptionType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

