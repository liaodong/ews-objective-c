#import <Foundation/Foundation.h>
#import "EWSBaseRequestType.h"



@class EWSArrayOfBaseItemIdsType;
@class EWSItemResponseShapeType;
@class EWSTargetFolderIdType;



/* SyncFolderItemsType */
@interface EWSSyncFolderItemsType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSItemResponseShapeType*  itemShape;
@property (strong) EWSTargetFolderIdType*     syncFolderId;
@property (strong) NSString*                  syncState           /* xs:string */;
@property (strong) EWSArrayOfBaseItemIdsType* ignore;
@property (strong) NSNumber*                  maxChangesReturned  /* EWSMaxSyncChangesReturnedType */;


@end

