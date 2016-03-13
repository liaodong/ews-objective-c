#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSGetUserOofSettingsRequest.h"


@implementation EWSGetUserOofSettingsRequest 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSGetUserOofSettingsRequest class]];

    [handler property      : @"mailbox"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Mailbox"
             withHandler   : [EWSEmailAddress class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSGetUserOofSettingsRequest class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetUserOofSettingsRequest: Mailbox=%@ super=%@", _mailbox, [super description]];
}

@end

