#import <Foundation/Foundation.h>




#import "../types/EWSDeliverMeetingRequestsType.h"
#import "EWSBaseDelegateResponseMessageType.h"



/* GetDelegateResponseMessageType */
@interface EWSGetDelegateResponseMessageType : EWSBaseDelegateResponseMessageType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* deliverMeetingRequests  /* EWSDeliverMeetingRequestsType */;


@end

