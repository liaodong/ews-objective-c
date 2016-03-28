#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSItemResponseShapeType;
@class MPSEWSNonEmptyArrayOfBaseFolderIdsType;
@class MPSEWSNonEmptyArrayOfFieldOrdersType;
@class MPSEWSRestrictionType;



/* FindItemType */
@interface MPSEWSFindItemType : MPSEWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                               traversal        /* MPSEWSItemQueryTraversalType */;
@property (strong) MPSEWSItemResponseShapeType*            itemShape;
@property (strong) MPSEWSRestrictionType*                  restriction;
@property (strong) MPSEWSNonEmptyArrayOfFieldOrdersType*   sortOrder;
@property (strong) MPSEWSNonEmptyArrayOfBaseFolderIdsType* parentFolderIds;


@end

