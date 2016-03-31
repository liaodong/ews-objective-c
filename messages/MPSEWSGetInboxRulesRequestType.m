#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSGetInboxRulesRequestType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"


@implementation MPSEWSGetInboxRulesRequestType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSGetInboxRulesRequestType class]];

    [handler property      : @"mailboxSmtpAddress"
             withNamespace : 'm'
             withXmlTag    : @"MailboxSmtpAddress"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSGetInboxRulesRequestType*) val
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val]) return FALSE;
    if ([val mailboxSmtpAddress] && ![MPSEWSStringTypeHandler isValid:[val mailboxSmtpAddress]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSGetInboxRulesRequestType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetInboxRulesRequestType: MailboxSmtpAddress=%@ super=%@", _mailboxSmtpAddress, [super description]];
}

@end

