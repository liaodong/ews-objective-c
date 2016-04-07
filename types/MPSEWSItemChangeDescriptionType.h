#import <Foundation/Foundation.h>
#import "MPSEWSChangeDescriptionType.h"






/* ItemChangeDescriptionType */
@interface MPSEWSItemChangeDescriptionType : MPSEWSChangeDescriptionType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSItemChangeDescriptionType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

