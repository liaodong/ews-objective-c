#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSNotificationType.h"
#import "../handlers/EWSBooleanTypeHandler.h"
#import "../types/EWSSubscriptionIdType.h"
#import "../types/EWSWatermarkType.h"


@implementation EWSNotificationType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSNotificationType class]];

    [handler property      : @"subscriptionId"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"SubscriptionId"
             withHandler   : [EWSSubscriptionIdType class]];

    [handler property      : @"previousWatermark"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"PreviousWatermark"
             withHandler   : [EWSWatermarkType class]];

    [handler property      : @"moreEvents"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"MoreEvents"
             withHandler   : [EWSBooleanTypeHandler class]];

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

