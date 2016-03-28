#import <Foundation/Foundation.h>
#import "EWSSmartResponseType.h"






/* ForwardItemType */
@interface EWSForwardItemType : EWSSmartResponseType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

