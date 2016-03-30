#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSNonEmptyArrayOfBaseItemIdsType;
@class MPSEWSTargetFolderIdType;



/* SendItemType */
@interface MPSEWSSendItemType : MPSEWSBaseRequestType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSendItemType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber*                             saveItemToFolder   /* xs:boolean */;
@property (strong) MPSEWSNonEmptyArrayOfBaseItemIdsType* itemIds;
@property (strong) MPSEWSTargetFolderIdType*             savedItemFolderId;


@end

