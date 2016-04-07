#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSGetPasswordExpirationDateType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"


@implementation MPSEWSGetPasswordExpirationDateType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSGetPasswordExpirationDateType class]];

    [handler property      : @"mailboxSmtpAddress"
             withNamespace : 'm'
             withXmlTag    : @"MailboxSmtpAddress"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSGetPasswordExpirationDateType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val forVersion:ver]) return FALSE;
    if ([val mailboxSmtpAddress] && ![MPSEWSStringTypeHandler isValid:[val mailboxSmtpAddress] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSGetPasswordExpirationDateType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetPasswordExpirationDateType: MailboxSmtpAddress=%@ super=%@", _mailboxSmtpAddress, [super description]];
}

@end

