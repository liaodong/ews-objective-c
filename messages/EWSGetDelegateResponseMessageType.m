#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSGetDelegateResponseMessageType.h"


@implementation EWSGetDelegateResponseMessageType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSGetDelegateResponseMessageType class]];

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

    [handler property      : @"responseMessages"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"ResponseMessages"
             withHandler   : [EWSArrayOfDelegateUserResponseMessageType class]];

    [handler property      : @"deliverMeetingRequests"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"DeliverMeetingRequests"
             withHandler   : [EWSDeliverMeetingRequestsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSGetDelegateResponseMessageType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetDelegateResponseMessageType: DeliverMeetingRequests=%@ super=%@", _deliverMeetingRequests, [super description]];
}

@end

