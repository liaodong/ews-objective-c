#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSGetDelegateType.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../types/MPSEWSArrayOfUserIdType.h"
#import "../types/MPSEWSEmailAddressType.h"


@implementation MPSEWSGetDelegateType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSGetDelegateType class]];

    [handler property    : @"includePermissions"
             withAttrTag : @"IncludePermissions"
             withHandler : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"mailbox"
             withNamespace : 'm'
             withXmlTag    : @"Mailbox"
             withHandler   : [MPSEWSEmailAddressType class]];

    [handler property      : @"userIds"
             withNamespace : 'm'
             withXmlTag    : @"UserIds"
             withHandler   : [MPSEWSArrayOfUserIdType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSGetDelegateType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetDelegateType: IncludePermissions=%@ UserIds=%@ super=%@", _includePermissions, _userIds, [super description]];
}

@end

