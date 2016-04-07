#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSSetUserOofSettingsRequest.h"
#import "../types/MPSEWSEmailAddress.h"
#import "../types/MPSEWSUserOofSettings.h"


@implementation MPSEWSSetUserOofSettingsRequest 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSSetUserOofSettingsRequest class]];

    [handler property      : @"mailbox"
             withNamespace : 't'
             withXmlTag    : @"Mailbox"
             withHandler   : [MPSEWSEmailAddress class]];

    [handler property      : @"userOofSettings"
             withNamespace : 't'
             withXmlTag    : @"UserOofSettings"
             withHandler   : [MPSEWSUserOofSettings class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSSetUserOofSettingsRequest*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val forVersion:ver]) return FALSE;
    if ([val mailbox] && ![MPSEWSEmailAddress isValid:[val mailbox] forVersion:ver]) return FALSE;
    if ([val userOofSettings] && ![MPSEWSUserOofSettings isValid:[val userOofSettings] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSSetUserOofSettingsRequest class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SetUserOofSettingsRequest: Mailbox=%@ UserOofSettings=%@ super=%@", _mailbox, _userOofSettings, [super description]];
}

@end

