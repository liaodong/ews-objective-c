#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSSendNotificationResultType.h"
#import "../types/MPSEWSSubscriptionStatusType.h"


@implementation MPSEWSSendNotificationResultType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSSendNotificationResultType class]];

    [handler property      : @"subscriptionStatus"
             withNamespace : 'm'
             withXmlTag    : @"SubscriptionStatus"
             withHandler   : [MPSEWSSubscriptionStatusType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSSendNotificationResultType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val subscriptionStatus] && ![MPSEWSSubscriptionStatusType isValid:[val subscriptionStatus] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSSendNotificationResultType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SendNotificationResultType: SubscriptionStatus=%@", _subscriptionStatus];
}

@end

