#import <Foundation/Foundation.h>
#import "MPSEWSBaseDelegateResponseMessageType.h"






/* AddDelegateResponseMessageType */
@interface MPSEWSAddDelegateResponseMessageType : MPSEWSBaseDelegateResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSAddDelegateResponseMessageType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

