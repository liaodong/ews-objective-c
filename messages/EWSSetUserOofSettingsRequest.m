#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSSetUserOofSettingsRequest.h"
#import "../types/EWSEmailAddress.h"
#import "../types/EWSUserOofSettings.h"


@implementation EWSSetUserOofSettingsRequest 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSSetUserOofSettingsRequest class]];

    [handler property      : @"mailbox"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Mailbox"
             withHandler   : [EWSEmailAddress class]];

    [handler property      : @"userOofSettings"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"UserOofSettings"
             withHandler   : [EWSUserOofSettings class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSSetUserOofSettingsRequest class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SetUserOofSettingsRequest: Mailbox=%@ UserOofSettings=%@ super=%@", _mailbox, _userOofSettings, [super description]];
}

@end

