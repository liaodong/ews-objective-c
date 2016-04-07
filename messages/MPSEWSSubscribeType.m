#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSSubscribeType.h"
#import "../types/MPSEWSPullSubscriptionRequestType.h"
#import "../types/MPSEWSPushSubscriptionRequestType.h"
#import "../types/MPSEWSStreamingSubscriptionRequestType.h"


@implementation MPSEWSSubscribeType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSSubscribeType class]];

    [handler property      : @"pullSubscriptionRequest"
             withNamespace : 'm'
             withXmlTag    : @"PullSubscriptionRequest"
             withHandler   : [MPSEWSPullSubscriptionRequestType class]];

    [handler property      : @"pushSubscriptionRequest"
             withNamespace : 'm'
             withXmlTag    : @"PushSubscriptionRequest"
             withHandler   : [MPSEWSPushSubscriptionRequestType class]];

    [handler property      : @"streamingSubscriptionRequest"
             withNamespace : 'm'
             withXmlTag    : @"StreamingSubscriptionRequest"
             withHandler   : [MPSEWSStreamingSubscriptionRequestType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSSubscribeType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val forVersion:ver]) return FALSE;
    if ([val pullSubscriptionRequest] && ![MPSEWSPullSubscriptionRequestType isValid:[val pullSubscriptionRequest] forVersion:ver]) return FALSE;
    if ([val pushSubscriptionRequest] && ![MPSEWSPushSubscriptionRequestType isValid:[val pushSubscriptionRequest] forVersion:ver]) return FALSE;
    if ([val streamingSubscriptionRequest] && ![MPSEWSStreamingSubscriptionRequestType isValid:[val streamingSubscriptionRequest] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSSubscribeType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SubscribeType: PullSubscriptionRequest=%@ PushSubscriptionRequest=%@ StreamingSubscriptionRequest=%@ super=%@", _pullSubscriptionRequest, _pushSubscriptionRequest, _streamingSubscriptionRequest, [super description]];
}

@end

