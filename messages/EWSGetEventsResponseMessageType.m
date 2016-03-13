#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSGetEventsResponseMessageType.h"


@implementation EWSGetEventsResponseMessageType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSGetEventsResponseMessageType class]];

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
             isRequired    : FALSE
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
    return [EWSGetEventsResponseMessageType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetEventsResponseMessageType: Notification=%@ super=%@", _notification, [super description]];
}

@end

