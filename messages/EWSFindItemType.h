#import <Foundation/Foundation.h>




#import "../types/EWSItemQueryTraversalType.h"
#import "../types/EWSItemResponseShapeType.h"
#import "../types/EWSNonEmptyArrayOfBaseFolderIdsType.h"
#import "../types/EWSNonEmptyArrayOfFieldOrdersType.h"
#import "../types/EWSRestrictionType.h"
#import "EWSBaseRequestType.h"



/* FindItemType */
@interface EWSFindItemType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString*                            traversal        /* EWSItemQueryTraversalType */;
@property (retain) EWSItemResponseShapeType*            itemShape;
@property (retain) EWSRestrictionType*                  restriction;
@property (retain) NSArray<EWSFieldOrderType*>*         sortOrder        /* EWSNonEmptyArrayOfFieldOrdersType */;
@property (retain) EWSNonEmptyArrayOfBaseFolderIdsType* parentFolderIds;


@end

