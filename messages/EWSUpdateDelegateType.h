#import <Foundation/Foundation.h>
#import "EWSBaseDelegateType.h"



@class EWSArrayOfDelegateUserType;



/* UpdateDelegateType */
@interface EWSUpdateDelegateType : EWSBaseDelegateType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSArrayOfDelegateUserType* delegateUsers;
@property (strong) NSString*                   deliverMeetingRequests  /* EWSDeliverMeetingRequestsType */;


@end

