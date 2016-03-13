#import <Foundation/Foundation.h>




#import "../types/EWSNonEmptyArrayOfBaseFolderIdsType.h"
#import "../types/EWSTargetFolderIdType.h"
#import "EWSBaseRequestType.h"



/* BaseMoveCopyFolderType */
@interface EWSBaseMoveCopyFolderType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSTargetFolderIdType*               toFolderId;
@property (retain) EWSNonEmptyArrayOfBaseFolderIdsType* folderIds;


@end

