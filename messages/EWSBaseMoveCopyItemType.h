#import <Foundation/Foundation.h>




#import "../types/EWSNonEmptyArrayOfBaseItemIdsType.h"
#import "../types/EWSTargetFolderIdType.h"
#import "EWSBaseRequestType.h"



/* BaseMoveCopyItemType */
@interface EWSBaseMoveCopyItemType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSTargetFolderIdType*             toFolderId;
@property (retain) EWSNonEmptyArrayOfBaseItemIdsType* itemIds;


@end

