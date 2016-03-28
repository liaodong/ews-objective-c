#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSItemResponseShapeType;
@class MPSEWSNonEmptyArrayOfBaseItemIdsType;



/* GetItemType */
@interface MPSEWSGetItemType : MPSEWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSItemResponseShapeType*          itemShape;
@property (strong) MPSEWSNonEmptyArrayOfBaseItemIdsType* itemIds;


@end

