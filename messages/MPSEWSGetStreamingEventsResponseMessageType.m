#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSGetStreamingEventsResponseMessageType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../handlers/MPSEWSXmlContentTypeHandler.h"
#import "../messages/MPSEWSResponseCodeType.h"
#import "../types/MPSEWSConnectionStatusType.h"
#import "../types/MPSEWSNonEmptyArrayOfNotificationsType.h"
#import "../types/MPSEWSNonEmptyArrayOfSubscriptionIdsType.h"
#import "../types/MPSEWSResponseClassType.h"


@implementation MPSEWSGetStreamingEventsResponseMessageType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSGetStreamingEventsResponseMessageType class]];

    [handler property    : @"responseClass"
             withAttrTag : @"ResponseClass"
             withHandler : [MPSEWSResponseClassType class]];

    [handler property      : @"messageText"
             withNamespace : 'm'
             withXmlTag    : @"MessageText"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"responseCode"
             withNamespace : 'm'
             withXmlTag    : @"ResponseCode"
             withHandler   : [MPSEWSResponseCodeType class]];

    [handler property      : @"descriptiveLinkKey"
             withNamespace : 'm'
             withXmlTag    : @"DescriptiveLinkKey"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"messageXml"
             withNamespace : 'm'
             withXmlTag    : @"MessageXml"
             withHandler   : [MPSEWSXmlContentTypeHandler class]];

    [handler property      : @"notifications"
             withNamespace : 'm'
             withXmlTag    : @"Notifications"
             withHandler   : [MPSEWSNonEmptyArrayOfNotificationsType class]];

    [handler property      : @"errorSubscriptionIds"
             withNamespace : 'm'
             withXmlTag    : @"ErrorSubscriptionIds"
             withHandler   : [MPSEWSNonEmptyArrayOfSubscriptionIdsType class]];

    [handler property      : @"connectionStatus"
             withNamespace : 'm'
             withXmlTag    : @"ConnectionStatus"
             withHandler   : [MPSEWSConnectionStatusType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSGetStreamingEventsResponseMessageType*) val
{   (void) val;
    if (![MPSEWSResponseMessageType isValid:val]) return FALSE;
    if ([val notifications] && ![MPSEWSNonEmptyArrayOfNotificationsType isValid:[val notifications]]) return FALSE;
    if ([val errorSubscriptionIds] && ![MPSEWSNonEmptyArrayOfSubscriptionIdsType isValid:[val errorSubscriptionIds]]) return FALSE;
    if ([val connectionStatus] && ![MPSEWSConnectionStatusType isValid:[val connectionStatus]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSGetStreamingEventsResponseMessageType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetStreamingEventsResponseMessageType: Notifications=%@ ErrorSubscriptionIds=%@ ConnectionStatus=%@ super=%@", _notifications, _errorSubscriptionIds, _connectionStatus, [super description]];
}

@end

