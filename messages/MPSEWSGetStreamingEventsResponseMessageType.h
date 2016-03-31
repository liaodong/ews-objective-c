#import <Foundation/Foundation.h>
#import "MPSEWSResponseMessageType.h"



@class MPSEWSNonEmptyArrayOfNotificationsType;
@class MPSEWSNonEmptyArrayOfSubscriptionIdsType;



/* GetStreamingEventsResponseMessageType */
@interface MPSEWSGetStreamingEventsResponseMessageType : MPSEWSResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSGetStreamingEventsResponseMessageType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSNonEmptyArrayOfNotificationsType*   notifications;
@property (strong) MPSEWSNonEmptyArrayOfSubscriptionIdsType* errorSubscriptionIds;
@property (strong) NSString*                                 connectionStatus      /* MPSEWSConnectionStatusType */;


@end

