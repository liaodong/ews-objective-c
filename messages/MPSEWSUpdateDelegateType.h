#import <Foundation/Foundation.h>
#import "MPSEWSBaseDelegateType.h"



@class MPSEWSArrayOfDelegateUserType;



/* UpdateDelegateType */
@interface MPSEWSUpdateDelegateType : MPSEWSBaseDelegateType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSUpdateDelegateType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSArrayOfDelegateUserType* delegateUsers;
@property (strong) NSString*                      deliverMeetingRequests  /* MPSEWSDeliverMeetingRequestsType */;


@end

