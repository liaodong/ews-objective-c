#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSSubscribeResponseMessageType.h"


@implementation EWSSubscribeResponseMessageType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSSubscribeResponseMessageType class]];

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

    [handler property      : @"subscriptionId"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"SubscriptionId"
             withHandler   : [EWSSubscriptionIdType class]];

    [handler property      : @"watermark"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"Watermark"
             withHandler   : [EWSWatermarkType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSSubscribeResponseMessageType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SubscribeResponseMessageType: SubscriptionId=%@ Watermark=%@ super=%@", _subscriptionId, _watermark, [super description]];
}

@end

