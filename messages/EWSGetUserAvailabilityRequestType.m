#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSGetUserAvailabilityRequestType.h"


@implementation EWSGetUserAvailabilityRequestType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSGetUserAvailabilityRequestType class]];

    [handler property      : @"timeZone"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"TimeZone"
             withHandler   : [EWSSerializableTimeZone class]];

    [handler property      : @"mailboxDataArray"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"MailboxDataArray"
             withHandler   : [EWSArrayOfMailboxData class]];

    [handler property      : @"freeBusyViewOptions"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"FreeBusyViewOptions"
             withHandler   : [EWSFreeBusyViewOptionsType class]];

    [handler property      : @"suggestionsViewOptions"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"SuggestionsViewOptions"
             withHandler   : [EWSSuggestionsViewOptionsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSGetUserAvailabilityRequestType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetUserAvailabilityRequestType: TimeZone=%@ MailboxDataArray=%@ FreeBusyViewOptions=%@ SuggestionsViewOptions=%@ super=%@", _timeZone, _mailboxDataArray, _freeBusyViewOptions, _suggestionsViewOptions, [super description]];
}

@end

