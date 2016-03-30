#import <Foundation/Foundation.h>
#import "MPSEWSBaseMoveCopyFolderType.h"






/* CopyFolderType */
@interface MPSEWSCopyFolderType : MPSEWSBaseMoveCopyFolderType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSCopyFolderType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

