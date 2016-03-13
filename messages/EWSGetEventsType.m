#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSGetEventsType.h"


@implementation EWSGetEventsType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSGetEventsType class]];

    [handler property      : @"subscriptionId"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"SubscriptionId"
             withHandler   : [EWSSubscriptionIdType class]];

    [handler property      : @"watermark"
             isRequired    : TRUE
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
    return [EWSGetEventsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetEventsType: SubscriptionId=%@ Watermark=%@ super=%@", _subscriptionId, _watermark, [super description]];
}

@end

