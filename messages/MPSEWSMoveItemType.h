#import <Foundation/Foundation.h>
#import "MPSEWSBaseMoveCopyItemType.h"






/* MoveItemType */
@interface MPSEWSMoveItemType : MPSEWSBaseMoveCopyItemType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

