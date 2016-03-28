#import <Foundation/Foundation.h>
#import "EWSBaseRequestType.h"



@class EWSItemResponseShapeType;
@class EWSNonEmptyArrayOfBaseFolderIdsType;
@class EWSNonEmptyArrayOfFieldOrdersType;
@class EWSRestrictionType;



/* FindItemType */
@interface EWSFindItemType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                            traversal        /* EWSItemQueryTraversalType */;
@property (strong) EWSItemResponseShapeType*            itemShape;
@property (strong) EWSRestrictionType*                  restriction;
@property (strong) EWSNonEmptyArrayOfFieldOrdersType*   sortOrder;
@property (strong) EWSNonEmptyArrayOfBaseFolderIdsType* parentFolderIds;


@end

