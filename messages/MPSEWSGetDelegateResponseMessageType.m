#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSGetDelegateResponseMessageType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../messages/MPSEWSArrayOfDelegateUserResponseMessageType.h"
#import "../messages/MPSEWSResponseCodeType.h"
#import "../types/MPSEWSDeliverMeetingRequestsType.h"
#import "../types/MPSEWSResponseClassType.h"


@implementation MPSEWSGetDelegateResponseMessageType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSGetDelegateResponseMessageType class]];

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
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"responseMessages"
             withNamespace : 'm'
             withXmlTag    : @"ResponseMessages"
             withHandler   : [MPSEWSArrayOfDelegateUserResponseMessageType class]];

    [handler property      : @"deliverMeetingRequests"
             withNamespace : 'm'
             withXmlTag    : @"DeliverMeetingRequests"
             withHandler   : [MPSEWSDeliverMeetingRequestsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSGetDelegateResponseMessageType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetDelegateResponseMessageType: DeliverMeetingRequests=%@ super=%@", _deliverMeetingRequests, [super description]];
}

@end

