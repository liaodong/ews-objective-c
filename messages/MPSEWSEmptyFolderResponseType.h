#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* EmptyFolderResponseType */
@interface MPSEWSEmptyFolderResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSEmptyFolderResponseType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

