#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* GetEventsResponseType */
@interface MPSEWSGetEventsResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSGetEventsResponseType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

