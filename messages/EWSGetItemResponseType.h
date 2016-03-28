#import <Foundation/Foundation.h>
#import "EWSBaseResponseMessageType.h"






/* GetItemResponseType */
@interface EWSGetItemResponseType : EWSBaseResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

