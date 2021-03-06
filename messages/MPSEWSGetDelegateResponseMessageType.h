#import <Foundation/Foundation.h>
#import "MPSEWSBaseDelegateResponseMessageType.h"






/* GetDelegateResponseMessageType */
@interface MPSEWSGetDelegateResponseMessageType : MPSEWSBaseDelegateResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSGetDelegateResponseMessageType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* deliverMeetingRequests  /* MPSEWSDeliverMeetingRequestsType */;


@end

