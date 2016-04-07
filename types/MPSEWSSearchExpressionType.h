#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"






/* SearchExpressionType */
@interface MPSEWSSearchExpressionType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSearchExpressionType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

