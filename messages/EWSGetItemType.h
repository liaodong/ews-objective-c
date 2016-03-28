#import <Foundation/Foundation.h>
#import "EWSBaseRequestType.h"



@class EWSItemResponseShapeType;
@class EWSNonEmptyArrayOfBaseItemIdsType;



/* GetItemType */
@interface EWSGetItemType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSItemResponseShapeType*          itemShape;
@property (strong) EWSNonEmptyArrayOfBaseItemIdsType* itemIds;


@end

