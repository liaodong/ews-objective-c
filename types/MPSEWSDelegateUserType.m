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
             withNamespace : 't'
             withXmlTag    : @"UserId"
             withHandler   : [MPSEWSUserIdType class]];

    [handler property      : @"delegatePermissions"
             withNamespace : 't'
             withXmlTag    : @"DelegatePermissions"
             withHandler   : [MPSEWSDelegatePermissionsType class]];

    [handler property      : @"receiveCopiesOfMeetingMessages"
             withNamespace : 't'
             withXmlTag    : @"ReceiveCopiesOfMeetingMessages"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"viewPrivateItems"
             withNamespace : 't'
             withXmlTag    : @"ViewPrivateItems"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSDelegateUserType*) val
{   (void) val;
    if ([val userId] && ![MPSEWSUserIdType isValid:[val userId]]) return FALSE;
    if ([val delegatePermissions] && ![MPSEWSDelegatePermissionsType isValid:[val delegatePermissions]]) return FALSE;
    if ([val receiveCopiesOfMeetingMessages] && ![MPSEWSBooleanTypeHandler isValid:[val receiveCopiesOfMeetingMessages]]) return FALSE;
    if ([val viewPrivateItems] && ![MPSEWSBooleanTypeHandler isValid:[val viewPrivateItems]]) return FALSE;
    return TRUE;
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

