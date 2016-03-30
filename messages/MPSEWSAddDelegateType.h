#import <Foundation/Foundation.h>
#import "MPSEWSBaseDelegateType.h"



@class MPSEWSArrayOfDelegateUserType;



/* AddDelegateType */
@interface MPSEWSAddDelegateType : MPSEWSBaseDelegateType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSAddDelegateType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSArrayOfDelegateUserType* delegateUsers;
@property (strong) NSString*                      deliverMeetingRequests  /* MPSEWSDeliverMeetingRequestsType */;


@end

