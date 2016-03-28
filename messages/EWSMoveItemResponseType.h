#import <Foundation/Foundation.h>
#import "EWSBaseResponseMessageType.h"






/* MoveItemResponseType */
@interface EWSMoveItemResponseType : EWSBaseResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

