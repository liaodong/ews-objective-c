#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSSerializedSecurityContextType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSNonEmptyArrayOfGroupIdentifiersType.h"
#import "../types/MPSEWSNonEmptyArrayOfRestrictedGroupIdentifiersType.h"


@implementation MPSEWSSerializedSecurityContextType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSSerializedSecurityContextType class]];

    [handler property      : @"userSid"
             withNamespace : 't'
             withXmlTag    : @"UserSid"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"groupSids"
             withNamespace : 't'
             withXmlTag    : @"GroupSids"
             withHandler   : [MPSEWSNonEmptyArrayOfGroupIdentifiersType class]];

    [handler property      : @"restrictedGroupSids"
             withNamespace : 't'
             withXmlTag    : @"RestrictedGroupSids"
             withHandler   : [MPSEWSNonEmptyArrayOfRestrictedGroupIdentifiersType class]];

    [handler property      : @"primarySmtpAddress"
             withNamespace : 't'
             withXmlTag    : @"PrimarySmtpAddress"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSSerializedSecurityContextType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SerializedSecurityContextType: UserSid=%@ GroupSids=%@ RestrictedGroupSids=%@ PrimarySmtpAddress=%@", _userSid, _groupSids, _restrictedGroupSids, _primarySmtpAddress];
}

@end

