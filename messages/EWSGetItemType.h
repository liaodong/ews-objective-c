#import <Foundation/Foundation.h>




#import "../types/EWSItemResponseShapeType.h"
#import "../types/EWSNonEmptyArrayOfBaseItemIdsType.h"
#import "EWSBaseRequestType.h"



/* GetItemType */
@interface EWSGetItemType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSItemResponseShapeType*          itemShape;
@property (retain) EWSNonEmptyArrayOfBaseItemIdsType* itemIds;


@end

