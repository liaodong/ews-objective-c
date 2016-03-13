#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSAddDelegateType.h"


@implementation EWSAddDelegateType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSAddDelegateType class]];

    [handler property      : @"mailbox"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"Mailbox"
             withHandler   : [EWSEmailAddressType class]];

    [handler property      : @"delegateUsers"
             isRequired    : TRUE
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
    return [EWSAddDelegateType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"AddDelegateType: DelegateUsers=%@ DeliverMeetingRequests=%@ super=%@", _delegateUsers, _deliverMeetingRequests, [super description]];
}

@end

