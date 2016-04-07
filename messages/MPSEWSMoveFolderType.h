#import <Foundation/Foundation.h>
#import "MPSEWSBaseMoveCopyFolderType.h"






/* MoveFolderType */
@interface MPSEWSMoveFolderType : MPSEWSBaseMoveCopyFolderType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSMoveFolderType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

