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
             withNamespace : 'm'
             withXmlTag    : @"Mailbox"
             withHandler   : [MPSEWSEmailAddressType class]];

    [handler property      : @"delegateUsers"
             withNamespace : 'm'
             withXmlTag    : @"DelegateUsers"
             withHandler   : [MPSEWSArrayOfDelegateUserType class]];

    [handler property      : @"deliverMeetingRequests"
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

