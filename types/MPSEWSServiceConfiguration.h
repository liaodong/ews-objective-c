#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* ServiceConfiguration */
@interface MPSEWSServiceConfiguration : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSServiceConfiguration*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

