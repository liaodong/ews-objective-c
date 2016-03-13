#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSGetDelegateType.h"


@implementation EWSGetDelegateType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSGetDelegateType class]];

    [handler property    : @"includePermissions"
             isRequired  : TRUE
             withAttrTag : @"IncludePermissions"
             withHandler : [EWSBooleanTypeHandler class]];

    [handler property      : @"mailbox"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"Mailbox"
             withHandler   : [EWSEmailAddressType class]];

    [handler property      : @"userIds"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"UserIds"
             withHandler   : [EWSArrayOfUserIdType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSGetDelegateType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetDelegateType: IncludePermissions=%@ UserIds=%@ super=%@", _includePermissions, _userIds, [super description]];
}

@end

