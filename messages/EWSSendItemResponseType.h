#import <Foundation/Foundation.h>
#import "EWSBaseResponseMessageType.h"






/* SendItemResponseType */
@interface EWSSendItemResponseType : EWSBaseResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

