#import <Foundation/Foundation.h>
#import "EWSBaseDelegateResponseMessageType.h"






/* GetDelegateResponseMessageType */
@interface EWSGetDelegateResponseMessageType : EWSBaseDelegateResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* deliverMeetingRequests  /* EWSDeliverMeetingRequestsType */;


@end

