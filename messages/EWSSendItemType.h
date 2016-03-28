#import <Foundation/Foundation.h>
#import "EWSBaseRequestType.h"



@class EWSNonEmptyArrayOfBaseItemIdsType;
@class EWSTargetFolderIdType;



/* SendItemType */
@interface EWSSendItemType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber*                          saveItemToFolder   /* xs:boolean */;
@property (strong) EWSNonEmptyArrayOfBaseItemIdsType* itemIds;
@property (strong) EWSTargetFolderIdType*             savedItemFolderId;


@end

