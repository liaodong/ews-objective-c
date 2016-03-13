#import <Foundation/Foundation.h>




#import "EWSBaseMoveCopyItemType.h"



/* MoveItemType */
@interface EWSMoveItemType : EWSBaseMoveCopyItemType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

