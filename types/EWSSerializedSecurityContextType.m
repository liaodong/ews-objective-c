#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSSerializedSecurityContextType.h"
#import "../handlers/EWSStringTypeHandler.h"
#import "../types/EWSNonEmptyArrayOfGroupIdentifiersType.h"
#import "../types/EWSNonEmptyArrayOfRestrictedGroupIdentifiersType.h"


@implementation EWSSerializedSecurityContextType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSSerializedSecurityContextType class]];

    [handler property      : @"userSid"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"UserSid"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"groupSids"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"GroupSids"
             withHandler   : [EWSNonEmptyArrayOfGroupIdentifiersType class]];

    [handler property      : @"restrictedGroupSids"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"RestrictedGroupSids"
             withHandler   : [EWSNonEmptyArrayOfRestrictedGroupIdentifiersType class]];

    [handler property      : @"primarySmtpAddress"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"PrimarySmtpAddress"
             withHandler   : [EWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSSerializedSecurityContextType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SerializedSecurityContextType: UserSid=%@ GroupSids=%@ RestrictedGroupSids=%@ PrimarySmtpAddress=%@", _userSid, _groupSids, _restrictedGroupSids, _primarySmtpAddress];
}

@end

