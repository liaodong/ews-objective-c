#import <Foundation/Foundation.h>
#import "EWSChangeDescriptionType.h"






/* ItemChangeDescriptionType */
@interface EWSItemChangeDescriptionType : EWSChangeDescriptionType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

