#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSSubscribeType.h"
#import "../types/MPSEWSPullSubscriptionRequestType.h"
#import "../types/MPSEWSPushSubscriptionRequestType.h"


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

    [handler register];
}

+ (BOOL) isValid:(MPSEWSSubscribeType*) val
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val]) return FALSE;
    if ([val pullSubscriptionRequest] && ![MPSEWSPullSubscriptionRequestType isValid:[val pullSubscriptionRequest]]) return FALSE;
    if ([val pushSubscriptionRequest] && ![MPSEWSPushSubscriptionRequestType isValid:[val pushSubscriptionRequest]]) return FALSE;
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
    return [NSString stringWithFormat:@"SubscribeType: PullSubscriptionRequest=%@ PushSubscriptionRequest=%@ super=%@", _pullSubscriptionRequest, _pushSubscriptionRequest, [super description]];
}

@end

