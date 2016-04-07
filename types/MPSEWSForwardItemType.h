#import <Foundation/Foundation.h>
#import "MPSEWSSmartResponseType.h"






/* ForwardItemType */
@interface MPSEWSForwardItemType : MPSEWSSmartResponseType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSForwardItemType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

