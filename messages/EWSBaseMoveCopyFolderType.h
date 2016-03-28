#import <Foundation/Foundation.h>
#import "EWSBaseRequestType.h"



@class EWSNonEmptyArrayOfBaseFolderIdsType;
@class EWSTargetFolderIdType;



/* BaseMoveCopyFolderType */
@interface EWSBaseMoveCopyFolderType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSTargetFolderIdType*               toFolderId;
@property (strong) EWSNonEmptyArrayOfBaseFolderIdsType* folderIds;


@end

