#import <Foundation/Foundation.h>




#import "EWSBaseResponseMessageType.h"



/* UnsubscribeResponseType */
@interface EWSUnsubscribeResponseType : EWSBaseResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

