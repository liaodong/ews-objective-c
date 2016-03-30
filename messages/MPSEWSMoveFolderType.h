#import <Foundation/Foundation.h>
#import "MPSEWSBaseMoveCopyFolderType.h"






/* MoveFolderType */
@interface MPSEWSMoveFolderType : MPSEWSBaseMoveCopyFolderType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSMoveFolderType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

