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
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Mailbox"
             withHandler   : [MPSEWSEmailAddress class]];

    [handler property      : @"userOofSettings"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"UserOofSettings"
             withHandler   : [MPSEWSUserOofSettings class]];

    [handler register];
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

