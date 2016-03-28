#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSNotificationType.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../types/MPSEWSSubscriptionIdType.h"
#import "../types/MPSEWSWatermarkType.h"


@implementation MPSEWSNotificationType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSNotificationType class]];

    [handler property      : @"subscriptionId"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"SubscriptionId"
             withHandler   : [MPSEWSSubscriptionIdType class]];

    [handler property      : @"previousWatermark"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"PreviousWatermark"
             withHandler   : [MPSEWSWatermarkType class]];

    [handler property      : @"moreEvents"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"MoreEvents"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSNotificationType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NotificationType: SubscriptionId=%@ PreviousWatermark=%@ MoreEvents=%@", _subscriptionId, _previousWatermark, _moreEvents];
}

@end

