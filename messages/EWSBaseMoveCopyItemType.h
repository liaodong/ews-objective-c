#import <Foundation/Foundation.h>
#import "EWSBaseRequestType.h"



@class EWSNonEmptyArrayOfBaseItemIdsType;
@class EWSTargetFolderIdType;



/* BaseMoveCopyItemType */
@interface EWSBaseMoveCopyItemType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSTargetFolderIdType*             toFolderId;
@property (strong) EWSNonEmptyArrayOfBaseItemIdsType* itemIds;


@end

