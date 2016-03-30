#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSUpdateDelegateType.h"
#import "../types/MPSEWSArrayOfDelegateUserType.h"
#import "../types/MPSEWSDeliverMeetingRequestsType.h"
#import "../types/MPSEWSEmailAddressType.h"


@implementation MPSEWSUpdateDelegateType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSUpdateDelegateType class]];

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

+ (BOOL) isValid:(MPSEWSUpdateDelegateType*) val
{   (void) val;
    if (![MPSEWSBaseDelegateType isValid:val]) return FALSE;
    if ([val delegateUsers] && ![MPSEWSArrayOfDelegateUserType isValid:[val delegateUsers]]) return FALSE;
    if ([val deliverMeetingRequests] && ![MPSEWSDeliverMeetingRequestsType isValid:[val deliverMeetingRequests]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSUpdateDelegateType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"UpdateDelegateType: DelegateUsers=%@ DeliverMeetingRequests=%@ super=%@", _delegateUsers, _deliverMeetingRequests, [super description]];
}

@end

