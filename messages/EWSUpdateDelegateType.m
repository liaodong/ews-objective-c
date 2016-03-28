#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSUpdateDelegateType.h"
#import "../types/EWSArrayOfDelegateUserType.h"
#import "../types/EWSDeliverMeetingRequestsType.h"
#import "../types/EWSEmailAddressType.h"


@implementation EWSUpdateDelegateType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSUpdateDelegateType class]];

    [handler property      : @"mailbox"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"Mailbox"
             withHandler   : [EWSEmailAddressType class]];

    [handler property      : @"delegateUsers"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"DelegateUsers"
             withHandler   : [EWSArrayOfDelegateUserType class]];

    [handler property      : @"deliverMeetingRequests"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"DeliverMeetingRequests"
             withHandler   : [EWSDeliverMeetingRequestsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSUpdateDelegateType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"UpdateDelegateType: DelegateUsers=%@ DeliverMeetingRequests=%@ super=%@", _delegateUsers, _deliverMeetingRequests, [super description]];
}

@end

