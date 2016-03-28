#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSGetEventsType.h"
#import "../types/MPSEWSSubscriptionIdType.h"
#import "../types/MPSEWSWatermarkType.h"


@implementation MPSEWSGetEventsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSGetEventsType class]];

    [handler property      : @"subscriptionId"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"SubscriptionId"
             withHandler   : [MPSEWSSubscriptionIdType class]];

    [handler property      : @"watermark"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"Watermark"
             withHandler   : [MPSEWSWatermarkType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSGetEventsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetEventsType: SubscriptionId=%@ Watermark=%@ super=%@", _subscriptionId, _watermark, [super description]];
}

@end

