#import <Foundation/Foundation.h>
#import "MPSEWSBaseResponseMessageType.h"






/* GetStreamingEventsResponseType */
@interface MPSEWSGetStreamingEventsResponseType : MPSEWSBaseResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSGetStreamingEventsResponseType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

