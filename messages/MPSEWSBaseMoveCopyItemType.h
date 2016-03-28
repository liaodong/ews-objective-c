#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSNonEmptyArrayOfBaseItemIdsType;
@class MPSEWSTargetFolderIdType;



/* BaseMoveCopyItemType */
@interface MPSEWSBaseMoveCopyItemType : MPSEWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSTargetFolderIdType*             toFolderId;
@property (strong) MPSEWSNonEmptyArrayOfBaseItemIdsType* itemIds;


@end

