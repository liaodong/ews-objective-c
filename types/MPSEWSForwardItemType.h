#import <Foundation/Foundation.h>
#import "MPSEWSSmartResponseType.h"






/* ForwardItemType */
@interface MPSEWSForwardItemType : MPSEWSSmartResponseType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

