#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSSendNotificationResultType.h"
#import "../types/EWSSubscriptionStatusType.h"


@implementation EWSSendNotificationResultType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSSendNotificationResultType class]];

    [handler property      : @"subscriptionStatus"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"SubscriptionStatus"
             withHandler   : [EWSSubscriptionStatusType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSSendNotificationResultType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SendNotificationResultType: SubscriptionStatus=%@", _subscriptionStatus];
}

@end

