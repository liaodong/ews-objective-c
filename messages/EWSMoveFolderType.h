#import <Foundation/Foundation.h>
#import "EWSBaseMoveCopyFolderType.h"






/* MoveFolderType */
@interface EWSMoveFolderType : EWSBaseMoveCopyFolderType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

