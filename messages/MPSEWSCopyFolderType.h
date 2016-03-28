#import <Foundation/Foundation.h>
#import "MPSEWSBaseMoveCopyFolderType.h"






/* CopyFolderType */
@interface MPSEWSCopyFolderType : MPSEWSBaseMoveCopyFolderType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

