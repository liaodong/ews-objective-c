#import <Foundation/Foundation.h>
#import "EWSBaseDelegateType.h"



@class EWSArrayOfDelegateUserType;



/* AddDelegateType */
@interface EWSAddDelegateType : EWSBaseDelegateType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSArrayOfDelegateUserType* delegateUsers;
@property (strong) NSString*                   deliverMeetingRequests  /* EWSDeliverMeetingRequestsType */;


@end

