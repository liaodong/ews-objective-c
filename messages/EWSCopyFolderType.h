#import <Foundation/Foundation.h>
#import "EWSBaseMoveCopyFolderType.h"






/* CopyFolderType */
@interface EWSCopyFolderType : EWSBaseMoveCopyFolderType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

