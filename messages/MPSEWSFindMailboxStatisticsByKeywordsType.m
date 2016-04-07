#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSFindMailboxStatisticsByKeywordsType.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../handlers/MPSEWSDateTimeTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSArrayOfSearchItemKindsType.h"
#import "../types/MPSEWSArrayOfSmtpAddressType.h"
#import "../types/MPSEWSArrayOfStringsType.h"
#import "../types/MPSEWSArrayOfUserMailboxesType.h"


@implementation MPSEWSFindMailboxStatisticsByKeywordsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSFindMailboxStatisticsByKeywordsType class]];

    [handler property      : @"mailboxes"
             withNamespace : 'm'
             withXmlTag    : @"Mailboxes"
             withHandler   : [MPSEWSArrayOfUserMailboxesType class]];

    [handler property      : @"keywords"
             withNamespace : 'm'
             withXmlTag    : @"Keywords"
             withHandler   : [MPSEWSArrayOfStringsType class]];

    [handler property      : @"language"
             withNamespace : 'm'
             withXmlTag    : @"Language"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"senders"
             withNamespace : 'm'
             withXmlTag    : @"Senders"
             withHandler   : [MPSEWSArrayOfSmtpAddressType class]];

    [handler property      : @"recipients"
             withNamespace : 'm'
             withXmlTag    : @"Recipients"
             withHandler   : [MPSEWSArrayOfSmtpAddressType class]];

    [handler property      : @"fromDate"
             withNamespace : 'm'
             withXmlTag    : @"FromDate"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"toDate"
             withNamespace : 'm'
             withXmlTag    : @"ToDate"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"messageTypes"
             withNamespace : 'm'
             withXmlTag    : @"MessageTypes"
             withHandler   : [MPSEWSArrayOfSearchItemKindsType class]];

    [handler property      : @"searchDumpster"
             withNamespace : 'm'
             withXmlTag    : @"SearchDumpster"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"includePersonalArchive"
             withNamespace : 'm'
             withXmlTag    : @"IncludePersonalArchive"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"includeUnsearchableItems"
             withNamespace : 'm'
             withXmlTag    : @"IncludeUnsearchableItems"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSFindMailboxStatisticsByKeywordsType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val forVersion:ver]) return FALSE;
    if ([val mailboxes] && ![MPSEWSArrayOfUserMailboxesType isValid:[val mailboxes] forVersion:ver]) return FALSE;
    if ([val keywords] && ![MPSEWSArrayOfStringsType isValid:[val keywords] forVersion:ver]) return FALSE;
    if ([val language] && ![MPSEWSStringTypeHandler isValid:[val language] forVersion:ver]) return FALSE;
    if ([val senders] && ![MPSEWSArrayOfSmtpAddressType isValid:[val senders] forVersion:ver]) return FALSE;
    if ([val recipients] && ![MPSEWSArrayOfSmtpAddressType isValid:[val recipients] forVersion:ver]) return FALSE;
    if ([val fromDate] && ![MPSEWSDateTimeTypeHandler isValid:[val fromDate] forVersion:ver]) return FALSE;
    if ([val toDate] && ![MPSEWSDateTimeTypeHandler isValid:[val toDate] forVersion:ver]) return FALSE;
    if ([val messageTypes] && ![MPSEWSArrayOfSearchItemKindsType isValid:[val messageTypes] forVersion:ver]) return FALSE;
    if ([val searchDumpster] && ![MPSEWSBooleanTypeHandler isValid:[val searchDumpster] forVersion:ver]) return FALSE;
    if ([val includePersonalArchive] && ![MPSEWSBooleanTypeHandler isValid:[val includePersonalArchive] forVersion:ver]) return FALSE;
    if ([val includeUnsearchableItems] && ![MPSEWSBooleanTypeHandler isValid:[val includeUnsearchableItems] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSFindMailboxStatisticsByKeywordsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FindMailboxStatisticsByKeywordsType: Mailboxes=%@ Keywords=%@ Language=%@ Senders=%@ Recipients=%@ FromDate=%@ ToDate=%@ MessageTypes=%@ SearchDumpster=%@ IncludePersonalArchive=%@ IncludeUnsearchableItems=%@ super=%@", _mailboxes, _keywords, _language, _senders, _recipients, _fromDate, _toDate, _messageTypes, _searchDumpster, _includePersonalArchive, _includeUnsearchableItems, [super description]];
}

@end

