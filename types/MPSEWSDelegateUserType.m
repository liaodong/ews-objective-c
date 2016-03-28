#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSDelegateUserType.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../types/MPSEWSDelegatePermissionsType.h"
#import "../types/MPSEWSUserIdType.h"


@implementation MPSEWSDelegateUserType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSDelegateUserType class]];

    [handler property      : @"userId"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"UserId"
             withHandler   : [MPSEWSUserIdType class]];

    [handler property      : @"delegatePermissions"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"DelegatePermissions"
             withHandler   : [MPSEWSDelegatePermissionsType class]];

    [handler property      : @"receiveCopiesOfMeetingMessages"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ReceiveCopiesOfMeetingMessages"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"viewPrivateItems"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ViewPrivateItems"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSDelegateUserType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"DelegateUserType: UserId=%@ DelegatePermissions=%@ ReceiveCopiesOfMeetingMessages=%@ ViewPrivateItems=%@", _userId, _delegatePermissions, _receiveCopiesOfMeetingMessages, _viewPrivateItems];
}

@end

