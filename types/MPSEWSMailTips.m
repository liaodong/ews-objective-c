#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSMailTips.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSEmailAddressType.h"
#import "../types/MPSEWSMailTipTypes.h"
#import "../types/MPSEWSOutOfOfficeMailTip.h"


@implementation MPSEWSMailTips 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSMailTips class]];

    [handler property      : @"recipientAddress"
             withNamespace : 't'
             withXmlTag    : @"RecipientAddress"
             withHandler   : [MPSEWSEmailAddressType class]];

    [handler property      : @"pendingMailTips"
             withNamespace : 't'
             withXmlTag    : @"PendingMailTips"
             withHandler   : [MPSEWSMailTipTypes class]];

    [handler property      : @"outOfOffice"
             withNamespace : 't'
             withXmlTag    : @"OutOfOffice"
             withHandler   : [MPSEWSOutOfOfficeMailTip class]];

    [handler property      : @"mailboxFull"
             withNamespace : 't'
             withXmlTag    : @"MailboxFull"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"customMailTip"
             withNamespace : 't'
             withXmlTag    : @"CustomMailTip"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"totalMemberCount"
             withNamespace : 't'
             withXmlTag    : @"TotalMemberCount"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"externalMemberCount"
             withNamespace : 't'
             withXmlTag    : @"ExternalMemberCount"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"maxMessageSize"
             withNamespace : 't'
             withXmlTag    : @"MaxMessageSize"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"deliveryRestricted"
             withNamespace : 't'
             withXmlTag    : @"DeliveryRestricted"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isModerated"
             withNamespace : 't'
             withXmlTag    : @"IsModerated"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"invalidRecipient"
             withNamespace : 't'
             withXmlTag    : @"InvalidRecipient"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSMailTips*) val
{   (void) val;
    if ([val recipientAddress] && ![MPSEWSEmailAddressType isValid:[val recipientAddress]]) return FALSE;
    if ([val pendingMailTips] && ![MPSEWSMailTipTypes isValid:[val pendingMailTips]]) return FALSE;
    if ([val outOfOffice] && ![MPSEWSOutOfOfficeMailTip isValid:[val outOfOffice]]) return FALSE;
    if ([val mailboxFull] && ![MPSEWSBooleanTypeHandler isValid:[val mailboxFull]]) return FALSE;
    if ([val customMailTip] && ![MPSEWSStringTypeHandler isValid:[val customMailTip]]) return FALSE;
    if ([val totalMemberCount] && ![MPSEWSIntegerTypeHandler isValid:[val totalMemberCount]]) return FALSE;
    if ([val externalMemberCount] && ![MPSEWSIntegerTypeHandler isValid:[val externalMemberCount]]) return FALSE;
    if ([val maxMessageSize] && ![MPSEWSIntegerTypeHandler isValid:[val maxMessageSize]]) return FALSE;
    if ([val deliveryRestricted] && ![MPSEWSBooleanTypeHandler isValid:[val deliveryRestricted]]) return FALSE;
    if ([val isModerated] && ![MPSEWSBooleanTypeHandler isValid:[val isModerated]]) return FALSE;
    if ([val invalidRecipient] && ![MPSEWSBooleanTypeHandler isValid:[val invalidRecipient]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSMailTips class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"MailTips: RecipientAddress=%@ PendingMailTips=%@ OutOfOffice=%@ MailboxFull=%@ CustomMailTip=%@ TotalMemberCount=%@ ExternalMemberCount=%@ MaxMessageSize=%@ DeliveryRestricted=%@ IsModerated=%@ InvalidRecipient=%@", _recipientAddress, _pendingMailTips, _outOfOffice, _mailboxFull, _customMailTip, _totalMemberCount, _externalMemberCount, _maxMessageSize, _deliveryRestricted, _isModerated, _invalidRecipient];
}

@end

