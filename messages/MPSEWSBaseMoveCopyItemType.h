#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSNonEmptyArrayOfBaseItemIdsType;
@class MPSEWSTargetFolderIdType;



/* BaseMoveCopyItemType */
@interface MPSEWSBaseMoveCopyItemType : MPSEWSBaseRequestType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSBaseMoveCopyItemType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSTargetFolderIdType*             toFolderId;
@property (strong) MPSEWSNonEmptyArrayOfBaseItemIdsType* itemIds;
@property (strong) NSNumber*                             returnNewItemIds  /* xs:boolean */;


@end

