#import <Foundation/Foundation.h>
#import "MPSEWSReferenceItemResponseType.h"






/* AcceptSharingInvitationType */
@interface MPSEWSAcceptSharingInvitationType : MPSEWSReferenceItemResponseType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSAcceptSharingInvitationType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

