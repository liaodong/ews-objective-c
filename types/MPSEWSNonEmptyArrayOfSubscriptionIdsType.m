#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSNonEmptyArrayOfSubscriptionIdsType.h"
#import "../types/MPSEWSSubscriptionIdType.h"


@implementation MPSEWSNonEmptyArrayOfSubscriptionIdsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSNonEmptyArrayOfSubscriptionIdsType class]];

    [handler listProperty  : @"subscriptionId"
             useSelector   : @"addSubscriptionId"
             withNamespace : 't'
             withXmlTag    : @"SubscriptionId"
             withHandler   : [MPSEWSSubscriptionIdType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfSubscriptionIdsType*) val
{   (void) val;
    if ([val subscriptionId]) {
        for (NSString* obj in [val subscriptionId]) {
            if (![MPSEWSSubscriptionIdType isValid:obj]) return FALSE;
        }
    }
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSNonEmptyArrayOfSubscriptionIdsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfSubscriptionIdsType: SubscriptionId=%@", _subscriptionId];
}

- (void) addSubscriptionId:(NSString*) elem
{
    if (![self subscriptionId]) {
        [self setSubscriptionId:[[NSMutableArray<NSString*> alloc] init]];
    }
    [_subscriptionId addObject:elem];
}

@end

