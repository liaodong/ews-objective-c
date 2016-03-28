#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSSendNotificationResponseMessageType.h"
#import "../handlers/EWSIntegerTypeHandler.h"
#import "../handlers/EWSStringTypeHandler.h"
#import "../messages/EWSResponseCodeType.h"
#import "../types/EWSNotificationType.h"
#import "../types/EWSResponseClassType.h"


@implementation EWSSendNotificationResponseMessageType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSSendNotificationResponseMessageType class]];

    [handler property    : @"responseClass"
             isRequired  : TRUE
             withAttrTag : @"ResponseClass"
             withHandler : [EWSResponseClassType class]];

    [handler property      : @"messageText"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"MessageText"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"responseCode"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"ResponseCode"
             withHandler   : [EWSResponseCodeType class]];

    [handler property      : @"descriptiveLinkKey"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"DescriptiveLinkKey"
             withHandler   : [EWSIntegerTypeHandler class]];

    [handler property      : @"messageXml"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"MessageXml"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"notification"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"Notification"
             withHandler   : [EWSNotificationType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSSendNotificationResponseMessageType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SendNotificationResponseMessageType: Notification=%@ super=%@", _notification, [super description]];
}

@end
