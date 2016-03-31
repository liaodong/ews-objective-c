#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSGetStreamingEventsType.h"
#import "../types/MPSEWSNonEmptyArrayOfSubscriptionIdsType.h"
#import "../types/MPSEWSStreamingSubscriptionConnectionTimeoutType.h"


@implementation MPSEWSGetStreamingEventsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSGetStreamingEventsType class]];

    [handler property      : @"subscriptionIds"
             withNamespace : 'm'
             withXmlTag    : @"SubscriptionIds"
             withHandler   : [MPSEWSNonEmptyArrayOfSubscriptionIdsType class]];

    [handler property      : @"connectionTimeout"
             withNamespace : 'm'
             withXmlTag    : @"ConnectionTimeout"
             withHandler   : [MPSEWSStreamingSubscriptionConnectionTimeoutType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSGetStreamingEventsType*) val
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val]) return FALSE;
    if ([val subscriptionIds] && ![MPSEWSNonEmptyArrayOfSubscriptionIdsType isValid:[val subscriptionIds]]) return FALSE;
    if ([val connectionTimeout] && ![MPSEWSStreamingSubscriptionConnectionTimeoutType isValid:[val connectionTimeout]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSGetStreamingEventsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetStreamingEventsType: SubscriptionIds=%@ ConnectionTimeout=%@ super=%@", _subscriptionIds, _connectionTimeout, [super description]];
}

@end

