#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSAddDelegateType.h"
#import "../types/MPSEWSArrayOfDelegateUserType.h"
#import "../types/MPSEWSDeliverMeetingRequestsType.h"
#import "../types/MPSEWSEmailAddressType.h"


@implementation MPSEWSAddDelegateType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSAddDelegateType class]];

    [handler property      : @"mailbox"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"Mailbox"
             withHandler   : [MPSEWSEmailAddressType class]];

    [handler property      : @"delegateUsers"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"DelegateUsers"
             withHandler   : [MPSEWSArrayOfDelegateUserType class]];

    [handler property      : @"deliverMeetingRequests"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"DeliverMeetingRequests"
             withHandler   : [MPSEWSDeliverMeetingRequestsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSAddDelegateType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"AddDelegateType: DelegateUsers=%@ DeliverMeetingRequests=%@ super=%@", _delegateUsers, _deliverMeetingRequests, [super description]];
}

@end

