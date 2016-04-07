#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSGetUserAvailabilityRequestType.h"
#import "../types/MPSEWSArrayOfMailboxData.h"
#import "../types/MPSEWSFreeBusyViewOptionsType.h"
#import "../types/MPSEWSSerializableTimeZone.h"
#import "../types/MPSEWSSuggestionsViewOptionsType.h"


@implementation MPSEWSGetUserAvailabilityRequestType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSGetUserAvailabilityRequestType class]];

    [handler property      : @"timeZone"
             withNamespace : 't'
             withXmlTag    : @"TimeZone"
             withHandler   : [MPSEWSSerializableTimeZone class]];

    [handler property      : @"mailboxDataArray"
             withNamespace : 'm'
             withXmlTag    : @"MailboxDataArray"
             withHandler   : [MPSEWSArrayOfMailboxData class]];

    [handler property      : @"freeBusyViewOptions"
             withNamespace : 't'
             withXmlTag    : @"FreeBusyViewOptions"
             withHandler   : [MPSEWSFreeBusyViewOptionsType class]];

    [handler property      : @"suggestionsViewOptions"
             withNamespace : 't'
             withXmlTag    : @"SuggestionsViewOptions"
             withHandler   : [MPSEWSSuggestionsViewOptionsType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSGetUserAvailabilityRequestType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val forVersion:ver]) return FALSE;
    if ([val timeZone] && ![MPSEWSSerializableTimeZone isValid:[val timeZone] forVersion:ver]) return FALSE;
    if ([val mailboxDataArray] && ![MPSEWSArrayOfMailboxData isValid:[val mailboxDataArray] forVersion:ver]) return FALSE;
    if ([val freeBusyViewOptions] && ![MPSEWSFreeBusyViewOptionsType isValid:[val freeBusyViewOptions] forVersion:ver]) return FALSE;
    if ([val suggestionsViewOptions] && ![MPSEWSSuggestionsViewOptionsType isValid:[val suggestionsViewOptions] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSGetUserAvailabilityRequestType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetUserAvailabilityRequestType: TimeZone=%@ MailboxDataArray=%@ FreeBusyViewOptions=%@ SuggestionsViewOptions=%@ super=%@", _timeZone, _mailboxDataArray, _freeBusyViewOptions, _suggestionsViewOptions, [super description]];
}

@end

