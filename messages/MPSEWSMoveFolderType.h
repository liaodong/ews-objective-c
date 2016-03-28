#import <Foundation/Foundation.h>
#import "MPSEWSBaseMoveCopyFolderType.h"






/* MoveFolderType */
@interface MPSEWSMoveFolderType : MPSEWSBaseMoveCopyFolderType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

