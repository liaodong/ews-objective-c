#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSGetUserOofSettingsRequest.h"
#import "../types/MPSEWSEmailAddress.h"


@implementation MPSEWSGetUserOofSettingsRequest 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSGetUserOofSettingsRequest class]];

    [handler property      : @"mailbox"
             withNamespace : 't'
             withXmlTag    : @"Mailbox"
             withHandler   : [MPSEWSEmailAddress class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSGetUserOofSettingsRequest*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val forVersion:ver]) return FALSE;
    if ([val mailbox] && ![MPSEWSEmailAddress isValid:[val mailbox] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSGetUserOofSettingsRequest class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetUserOofSettingsRequest: Mailbox=%@ super=%@", _mailbox, [super description]];
}

@end

