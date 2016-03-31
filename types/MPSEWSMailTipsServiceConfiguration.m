#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSMailTipsServiceConfiguration.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../types/MPSEWSSmtpDomainList.h"


@implementation MPSEWSMailTipsServiceConfiguration 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSMailTipsServiceConfiguration class]];

    [handler property      : @"mailTipsEnabled"
             withNamespace : 't'
             withXmlTag    : @"MailTipsEnabled"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"maxRecipientsPerGetMailTipsRequest"
             withNamespace : 't'
             withXmlTag    : @"MaxRecipientsPerGetMailTipsRequest"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"maxMessageSize"
             withNamespace : 't'
             withXmlTag    : @"MaxMessageSize"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"largeAudienceThreshold"
             withNamespace : 't'
             withXmlTag    : @"LargeAudienceThreshold"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"showExternalRecipientCount"
             withNamespace : 't'
             withXmlTag    : @"ShowExternalRecipientCount"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"internalDomains"
             withNamespace : 't'
             withXmlTag    : @"InternalDomains"
             withHandler   : [MPSEWSSmtpDomainList class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSMailTipsServiceConfiguration*) val
{   (void) val;
    if (![MPSEWSServiceConfiguration isValid:val]) return FALSE;
    if ([val mailTipsEnabled] && ![MPSEWSBooleanTypeHandler isValid:[val mailTipsEnabled]]) return FALSE;
    if ([val maxRecipientsPerGetMailTipsRequest] && ![MPSEWSIntegerTypeHandler isValid:[val maxRecipientsPerGetMailTipsRequest]]) return FALSE;
    if ([val maxMessageSize] && ![MPSEWSIntegerTypeHandler isValid:[val maxMessageSize]]) return FALSE;
    if ([val largeAudienceThreshold] && ![MPSEWSIntegerTypeHandler isValid:[val largeAudienceThreshold]]) return FALSE;
    if ([val showExternalRecipientCount] && ![MPSEWSBooleanTypeHandler isValid:[val showExternalRecipientCount]]) return FALSE;
    if ([val internalDomains] && ![MPSEWSSmtpDomainList isValid:[val internalDomains]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSMailTipsServiceConfiguration class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"MailTipsServiceConfiguration: MailTipsEnabled=%@ MaxRecipientsPerGetMailTipsRequest=%@ MaxMessageSize=%@ LargeAudienceThreshold=%@ ShowExternalRecipientCount=%@ InternalDomains=%@ super=%@", _mailTipsEnabled, _maxRecipientsPerGetMailTipsRequest, _maxMessageSize, _largeAudienceThreshold, _showExternalRecipientCount, _internalDomains, [super description]];
}

@end

