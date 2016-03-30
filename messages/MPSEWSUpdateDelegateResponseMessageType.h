#import <Foundation/Foundation.h>
#import "MPSEWSBaseDelegateResponseMessageType.h"






/* UpdateDelegateResponseMessageType */
@interface MPSEWSUpdateDelegateResponseMessageType : MPSEWSBaseDelegateResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSUpdateDelegateResponseMessageType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

