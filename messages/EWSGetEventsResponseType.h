#import <Foundation/Foundation.h>




#import "EWSBaseResponseMessageType.h"



/* GetEventsResponseType */
@interface EWSGetEventsResponseType : EWSBaseResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

