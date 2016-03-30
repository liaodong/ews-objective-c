#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* CopyItemResponseType */
@interface MPSEWSCopyItemResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSCopyItemResponseType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

