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

+ (BOOL) isValid:(MPSEWSSerializedSecurityContextType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val userSid] && ![MPSEWSStringTypeHandler isValid:[val userSid] forVersion:ver]) return FALSE;
    if ([val groupSids] && ![MPSEWSNonEmptyArrayOfGroupIdentifiersType isValid:[val groupSids] forVersion:ver]) return FALSE;
    if ([val restrictedGroupSids] && ![MPSEWSNonEmptyArrayOfRestrictedGroupIdentifiersType isValid:[val restrictedGroupSids] forVersion:ver]) return FALSE;
    if ([val primarySmtpAddress] && ![MPSEWSStringTypeHandler isValid:[val primarySmtpAddress] forVersion:ver]) return FALSE;
    return TRUE;
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

