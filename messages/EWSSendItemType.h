#import <Foundation/Foundation.h>




#import "../handlers/EWSBooleanTypeHandler.h"
#import "../types/EWSNonEmptyArrayOfBaseItemIdsType.h"
#import "../types/EWSTargetFolderIdType.h"
#import "EWSBaseRequestType.h"



/* SendItemType */
@interface EWSSendItemType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSNumber*                          saveItemToFolder   /* xs:boolean */;
@property (retain) EWSNonEmptyArrayOfBaseItemIdsType* itemIds;
@property (retain) EWSTargetFolderIdType*             savedItemFolderId;


@end

