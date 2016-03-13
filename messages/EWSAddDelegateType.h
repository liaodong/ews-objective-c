#import <Foundation/Foundation.h>




#import "../types/EWSArrayOfDelegateUserType.h"
#import "../types/EWSDeliverMeetingRequestsType.h"
#import "EWSBaseDelegateType.h"



/* AddDelegateType */
@interface EWSAddDelegateType : EWSBaseDelegateType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSArray<EWSDelegateUserType*>* delegateUsers           /* EWSArrayOfDelegateUserType */;
@property (retain) NSString*                      deliverMeetingRequests  /* EWSDeliverMeetingRequestsType */;


@end

