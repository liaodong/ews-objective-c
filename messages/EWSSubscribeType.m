#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSSubscribeType.h"
#import "../types/EWSPullSubscriptionRequestType.h"
#import "../types/EWSPushSubscriptionRequestType.h"


@implementation EWSSubscribeType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSSubscribeType class]];

    [handler property      : @"pullSubscriptionRequest"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"PullSubscriptionRequest"
             withHandler   : [EWSPullSubscriptionRequestType class]];

    [handler property      : @"pushSubscriptionRequest"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"PushSubscriptionRequest"
             withHandler   : [EWSPushSubscriptionRequestType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSSubscribeType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SubscribeType: PullSubscriptionRequest=%@ PushSubscriptionRequest=%@ super=%@", _pullSubscriptionRequest, _pushSubscriptionRequest, [super description]];
}

@end

