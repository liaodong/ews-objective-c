#import <Foundation/Foundation.h>
#import "MPSEWSBaseDelegateType.h"



@class MPSEWSArrayOfDelegateUserType;



/* AddDelegateType */
@interface MPSEWSAddDelegateType : MPSEWSBaseDelegateType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSAddDelegateType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSArrayOfDelegateUserType* delegateUsers;
@property (strong) NSString*                      deliverMeetingRequests  /* MPSEWSDeliverMeetingRequestsType */;


@end

