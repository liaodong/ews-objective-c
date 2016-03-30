#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* CopyFolderResponseType */
@interface MPSEWSCopyFolderResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSCopyFolderResponseType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

