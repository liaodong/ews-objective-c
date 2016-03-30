#import <Foundation/Foundation.h>
#import "MPSEWSBaseDelegateResponseMessageType.h"






/* RemoveDelegateResponseMessageType */
@interface MPSEWSRemoveDelegateResponseMessageType : MPSEWSBaseDelegateResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSRemoveDelegateResponseMessageType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

