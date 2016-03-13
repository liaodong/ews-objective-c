#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSDelegateUserType.h"


@implementation EWSDelegateUserType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSDelegateUserType class]];

    [handler property      : @"userId"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"UserId"
             withHandler   : [EWSUserIdType class]];

    [handler property      : @"delegatePermissions"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"DelegatePermissions"
             withHandler   : [EWSDelegatePermissionsType class]];

    [handler property      : @"receiveCopiesOfMeetingMessages"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ReceiveCopiesOfMeetingMessages"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler property      : @"viewPrivateItems"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ViewPrivateItems"
             withHandler   : [EWSBooleanTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSDelegateUserType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"DelegateUserType: UserId=%@ DelegatePermissions=%@ ReceiveCopiesOfMeetingMessages=%@ ViewPrivateItems=%@", _userId, _delegatePermissions, _receiveCopiesOfMeetingMessages, _viewPrivateItems];
}

@end

