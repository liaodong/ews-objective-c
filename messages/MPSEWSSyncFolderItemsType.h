#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSArrayOfBaseItemIdsType;
@class MPSEWSItemResponseShapeType;
@class MPSEWSTargetFolderIdType;



/* SyncFolderItemsType */
@interface MPSEWSSyncFolderItemsType : MPSEWSBaseRequestType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSyncFolderItemsType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSItemResponseShapeType*  itemShape;
@property (strong) MPSEWSTargetFolderIdType*     syncFolderId;
@property (strong) NSString*                     syncState           /* xs:string */;
@property (strong) MPSEWSArrayOfBaseItemIdsType* ignore;
@property (strong) NSNumber*                     maxChangesReturned  /* MPSEWSMaxSyncChangesReturnedType */;


@end

