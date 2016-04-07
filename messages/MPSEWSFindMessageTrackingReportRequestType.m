#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSFindMessageTrackingReportRequestType.h"
#import "../handlers/MPSEWSDateTimeTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSArrayOfTrackingPropertiesType.h"
#import "../types/MPSEWSEmailAddressType.h"
#import "../types/MPSEWSNonEmptyStringType.h"


@implementation MPSEWSFindMessageTrackingReportRequestType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSFindMessageTrackingReportRequestType class]];

    [handler property      : @"scope"
             withNamespace : 'm'
             withXmlTag    : @"Scope"
             withHandler   : [MPSEWSNonEmptyStringType class]];

    [handler property      : @"domain"
             withNamespace : 'm'
             withXmlTag    : @"Domain"
             withHandler   : [MPSEWSNonEmptyStringType class]];

    [handler property      : @"sender"
             withNamespace : 'm'
             withXmlTag    : @"Sender"
             withHandler   : [MPSEWSEmailAddressType class]];

    [handler property      : @"purportedSender"
             withNamespace : 'm'
             withXmlTag    : @"PurportedSender"
             withHandler   : [MPSEWSEmailAddressType class]];

    [handler property      : @"recipient"
             withNamespace : 'm'
             withXmlTag    : @"Recipient"
             withHandler   : [MPSEWSEmailAddressType class]];

    [handler property      : @"subject"
             withNamespace : 'm'
             withXmlTag    : @"Subject"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"startDateTime"
             withNamespace : 'm'
             withXmlTag    : @"StartDateTime"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"endDateTime"
             withNamespace : 'm'
             withXmlTag    : @"EndDateTime"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"messageId"
             withNamespace : 'm'
             withXmlTag    : @"MessageId"
             withHandler   : [MPSEWSNonEmptyStringType class]];

    [handler property      : @"federatedDeliveryMailbox"
             withNamespace : 'm'
             withXmlTag    : @"FederatedDeliveryMailbox"
             withHandler   : [MPSEWSEmailAddressType class]];

    [handler property      : @"diagnosticsLevel"
             withNamespace : 'm'
             withXmlTag    : @"DiagnosticsLevel"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"serverHint"
             withNamespace : 'm'
             withXmlTag    : @"ServerHint"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"properties"
             withNamespace : 'm'
             withXmlTag    : @"Properties"
             withHandler   : [MPSEWSArrayOfTrackingPropertiesType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSFindMessageTrackingReportRequestType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val forVersion:ver]) return FALSE;
    if ([val scope] && ![MPSEWSNonEmptyStringType isValid:[val scope] forVersion:ver]) return FALSE;
    if ([val domain] && ![MPSEWSNonEmptyStringType isValid:[val domain] forVersion:ver]) return FALSE;
    if ([val sender] && ![MPSEWSEmailAddressType isValid:[val sender] forVersion:ver]) return FALSE;
    if ([val purportedSender] && ![MPSEWSEmailAddressType isValid:[val purportedSender] forVersion:ver]) return FALSE;
    if ([val recipient] && ![MPSEWSEmailAddressType isValid:[val recipient] forVersion:ver]) return FALSE;
    if ([val subject] && ![MPSEWSStringTypeHandler isValid:[val subject] forVersion:ver]) return FALSE;
    if ([val startDateTime] && ![MPSEWSDateTimeTypeHandler isValid:[val startDateTime] forVersion:ver]) return FALSE;
    if ([val endDateTime] && ![MPSEWSDateTimeTypeHandler isValid:[val endDateTime] forVersion:ver]) return FALSE;
    if ([val messageId] && ![MPSEWSNonEmptyStringType isValid:[val messageId] forVersion:ver]) return FALSE;
    if ([val federatedDeliveryMailbox] && ![MPSEWSEmailAddressType isValid:[val federatedDeliveryMailbox] forVersion:ver]) return FALSE;
    if ([val diagnosticsLevel] && ![MPSEWSStringTypeHandler isValid:[val diagnosticsLevel] forVersion:ver]) return FALSE;
    if ([val serverHint] && ![MPSEWSStringTypeHandler isValid:[val serverHint] forVersion:ver]) return FALSE;
    if ([val properties] && ![MPSEWSArrayOfTrackingPropertiesType isValid:[val properties] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSFindMessageTrackingReportRequestType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FindMessageTrackingReportRequestType: Scope=%@ Domain=%@ Sender=%@ PurportedSender=%@ Recipient=%@ Subject=%@ StartDateTime=%@ EndDateTime=%@ MessageId=%@ FederatedDeliveryMailbox=%@ DiagnosticsLevel=%@ ServerHint=%@ Properties=%@ super=%@", _scope, _domain, _sender, _purportedSender, _recipient, _subject, _startDateTime, _endDateTime, _messageId, _federatedDeliveryMailbox, _diagnosticsLevel, _serverHint, _properties, [super description]];
}

@end

