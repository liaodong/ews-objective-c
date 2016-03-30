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

+ (BOOL) isValid:(MPSEWSSetUserOofSettingsRequest*) val
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val]) return FALSE;
    if ([val mailbox] && ![MPSEWSEmailAddress isValid:[val mailbox]]) return FALSE;
    if ([val userOofSettings] && ![MPSEWSUserOofSettings isValid:[val userOofSettings]]) return FALSE;
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

