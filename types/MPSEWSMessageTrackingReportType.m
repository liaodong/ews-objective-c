#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSMessageTrackingReportType.h"
#import "../handlers/MPSEWSDateTimeTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSArrayOfEmailAddressesType.h"
#import "../types/MPSEWSArrayOfRecipientTrackingEventType.h"
#import "../types/MPSEWSArrayOfTrackingPropertiesType.h"
#import "../types/MPSEWSEmailAddressType.h"


@implementation MPSEWSMessageTrackingReportType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSMessageTrackingReportType class]];

    [handler property      : @"sender"
             withNamespace : 't'
             withXmlTag    : @"Sender"
             withHandler   : [MPSEWSEmailAddressType class]];

    [handler property      : @"purportedSender"
             withNamespace : 't'
             withXmlTag    : @"PurportedSender"
             withHandler   : [MPSEWSEmailAddressType class]];

    [handler property      : @"subject"
             withNamespace : 't'
             withXmlTag    : @"Subject"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"submitTime"
             withNamespace : 't'
             withXmlTag    : @"SubmitTime"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"originalRecipients"
             withNamespace : 't'
             withXmlTag    : @"OriginalRecipients"
             withHandler   : [MPSEWSArrayOfEmailAddressesType class]];

    [handler property      : @"recipientTrackingEvents"
             withNamespace : 't'
             withXmlTag    : @"RecipientTrackingEvents"
             withHandler   : [MPSEWSArrayOfRecipientTrackingEventType class]];

    [handler property      : @"properties"
             withNamespace : 't'
             withXmlTag    : @"Properties"
             withHandler   : [MPSEWSArrayOfTrackingPropertiesType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSMessageTrackingReportType*) val
{   (void) val;
    if ([val sender] && ![MPSEWSEmailAddressType isValid:[val sender]]) return FALSE;
    if ([val purportedSender] && ![MPSEWSEmailAddressType isValid:[val purportedSender]]) return FALSE;
    if ([val subject] && ![MPSEWSStringTypeHandler isValid:[val subject]]) return FALSE;
    if ([val submitTime] && ![MPSEWSDateTimeTypeHandler isValid:[val submitTime]]) return FALSE;
    if ([val originalRecipients] && ![MPSEWSArrayOfEmailAddressesType isValid:[val originalRecipients]]) return FALSE;
    if ([val recipientTrackingEvents] && ![MPSEWSArrayOfRecipientTrackingEventType isValid:[val recipientTrackingEvents]]) return FALSE;
    if ([val properties] && ![MPSEWSArrayOfTrackingPropertiesType isValid:[val properties]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSMessageTrackingReportType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"MessageTrackingReportType: Sender=%@ PurportedSender=%@ Subject=%@ SubmitTime=%@ OriginalRecipients=%@ RecipientTrackingEvents=%@ Properties=%@", _sender, _purportedSender, _subject, _submitTime, _originalRecipients, _recipientTrackingEvents, _properties];
}

@end

