#import <Foundation/Foundation.h>




#import "../handlers/EWSStringTypeHandler.h"
#import "../types/EWSArrayOfBaseItemIdsType.h"
#import "../types/EWSItemResponseShapeType.h"
#import "../types/EWSMaxSyncChangesReturnedType.h"
#import "../types/EWSTargetFolderIdType.h"
#import "EWSBaseRequestType.h"



/* SyncFolderItemsType */
@interface EWSSyncFolderItemsType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSItemResponseShapeType*  itemShape;
@property (retain) EWSTargetFolderIdType*     syncFolderId;
@property (retain) NSString*                  syncState           /* xs:string */;
@property (retain) EWSArrayOfBaseItemIdsType* ignore;
@property (retain) NSNumber*                  maxChangesReturned  /* EWSMaxSyncChangesReturnedType */;


@end

