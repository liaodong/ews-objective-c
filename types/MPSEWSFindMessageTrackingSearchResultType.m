#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSFindMessageTrackingSearchResultType.h"
#import "../handlers/MPSEWSDateTimeTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSArrayOfRecipientsType.h"
#import "../types/MPSEWSArrayOfTrackingPropertiesType.h"
#import "../types/MPSEWSEmailAddressType.h"
#import "../types/MPSEWSNonEmptyStringType.h"


@implementation MPSEWSFindMessageTrackingSearchResultType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSFindMessageTrackingSearchResultType class]];

    [handler property      : @"subject"
             withNamespace : 't'
             withXmlTag    : @"Subject"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"sender"
             withNamespace : 't'
             withXmlTag    : @"Sender"
             withHandler   : [MPSEWSEmailAddressType class]];

    [handler property      : @"purportedSender"
             withNamespace : 't'
             withXmlTag    : @"PurportedSender"
             withHandler   : [MPSEWSEmailAddressType class]];

    [handler property      : @"recipients"
             withNamespace : 't'
             withXmlTag    : @"Recipients"
             withHandler   : [MPSEWSArrayOfRecipientsType class]];

    [handler property      : @"submittedTime"
             withNamespace : 't'
             withXmlTag    : @"SubmittedTime"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"messageTrackingReportId"
             withNamespace : 't'
             withXmlTag    : @"MessageTrackingReportId"
             withHandler   : [MPSEWSNonEmptyStringType class]];

    [handler property      : @"previousHopServer"
             withNamespace : 't'
             withXmlTag    : @"PreviousHopServer"
             withHandler   : [MPSEWSNonEmptyStringType class]];

    [handler property      : @"firstHopServer"
             withNamespace : 't'
             withXmlTag    : @"FirstHopServer"
             withHandler   : [MPSEWSNonEmptyStringType class]];

    [handler property      : @"properties"
             withNamespace : 't'
             withXmlTag    : @"Properties"
             withHandler   : [MPSEWSArrayOfTrackingPropertiesType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSFindMessageTrackingSearchResultType*) val
{   (void) val;
    if ([val subject] && ![MPSEWSStringTypeHandler isValid:[val subject]]) return FALSE;
    if ([val sender] && ![MPSEWSEmailAddressType isValid:[val sender]]) return FALSE;
    if ([val purportedSender] && ![MPSEWSEmailAddressType isValid:[val purportedSender]]) return FALSE;
    if ([val recipients] && ![MPSEWSArrayOfRecipientsType isValid:[val recipients]]) return FALSE;
    if ([val submittedTime] && ![MPSEWSDateTimeTypeHandler isValid:[val submittedTime]]) return FALSE;
    if ([val messageTrackingReportId] && ![MPSEWSNonEmptyStringType isValid:[val messageTrackingReportId]]) return FALSE;
    if ([val previousHopServer] && ![MPSEWSNonEmptyStringType isValid:[val previousHopServer]]) return FALSE;
    if ([val firstHopServer] && ![MPSEWSNonEmptyStringType isValid:[val firstHopServer]]) return FALSE;
    if ([val properties] && ![MPSEWSArrayOfTrackingPropertiesType isValid:[val properties]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSFindMessageTrackingSearchResultType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FindMessageTrackingSearchResultType: Subject=%@ Sender=%@ PurportedSender=%@ Recipients=%@ SubmittedTime=%@ MessageTrackingReportId=%@ PreviousHopServer=%@ FirstHopServer=%@ Properties=%@", _subject, _sender, _purportedSender, _recipients, _submittedTime, _messageTrackingReportId, _previousHopServer, _firstHopServer, _properties];
}

@end

