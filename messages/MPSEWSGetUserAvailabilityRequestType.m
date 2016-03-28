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
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"TimeZone"
             withHandler   : [MPSEWSSerializableTimeZone class]];

    [handler property      : @"mailboxDataArray"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"MailboxDataArray"
             withHandler   : [MPSEWSArrayOfMailboxData class]];

    [handler property      : @"freeBusyViewOptions"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"FreeBusyViewOptions"
             withHandler   : [MPSEWSFreeBusyViewOptionsType class]];

    [handler property      : @"suggestionsViewOptions"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"SuggestionsViewOptions"
             withHandler   : [MPSEWSSuggestionsViewOptionsType class]];

    [handler register];
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

