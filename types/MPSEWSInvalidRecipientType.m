#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSInvalidRecipientType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSInvalidRecipientResponseCodeType.h"
#import "../types/MPSEWSNonEmptyStringType.h"


@implementation MPSEWSInvalidRecipientType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSInvalidRecipientType class]];

    [handler property      : @"smtpAddress"
             withNamespace : 't'
             withXmlTag    : @"SmtpAddress"
             withHandler   : [MPSEWSNonEmptyStringType class]];

    [handler property      : @"responseCode"
             withNamespace : 't'
             withXmlTag    : @"ResponseCode"
             withHandler   : [MPSEWSInvalidRecipientResponseCodeType class]];

    [handler property      : @"messageText"
             withNamespace : 't'
             withXmlTag    : @"MessageText"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSInvalidRecipientType*) val
{   (void) val;
    if ([val smtpAddress] && ![MPSEWSNonEmptyStringType isValid:[val smtpAddress]]) return FALSE;
    if ([val responseCode] && ![MPSEWSInvalidRecipientResponseCodeType isValid:[val responseCode]]) return FALSE;
    if ([val messageText] && ![MPSEWSStringTypeHandler isValid:[val messageText]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSInvalidRecipientType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"InvalidRecipientType: SmtpAddress=%@ ResponseCode=%@ MessageText=%@", _smtpAddress, _responseCode, _messageText];
}

@end

