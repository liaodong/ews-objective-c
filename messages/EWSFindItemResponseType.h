#import <Foundation/Foundation.h>




#import "EWSBaseResponseMessageType.h"



/* FindItemResponseType */
@interface EWSFindItemResponseType : EWSBaseResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

