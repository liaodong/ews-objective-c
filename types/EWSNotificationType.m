#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSNotificationType.h"


@implementation EWSNotificationType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSNotificationType class]];

    [handler property   : @"subscriptionId"
             isRequired : TRUE
             withXmlTag : @"SubscriptionId"
             withHandler: [EWSSubscriptionIdType class]];

    [handler property   : @"previousWatermark"
             isRequired : TRUE
             withXmlTag : @"PreviousWatermark"
             withHandler: [EWSWatermarkType class]];

    [handler property   : @"moreEvents"
             isRequired : TRUE
             withXmlTag : @"MoreEvents"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSNotificationType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NotificationType: SubscriptionId=%@ PreviousWatermark=%@ MoreEvents=%@", _subscriptionId, _previousWatermark, _moreEvents];
}

@end

