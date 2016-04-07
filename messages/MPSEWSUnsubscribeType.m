#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSUnsubscribeType.h"
#import "../types/MPSEWSSubscriptionIdType.h"


@implementation MPSEWSUnsubscribeType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSUnsubscribeType class]];

    [handler property      : @"subscriptionId"
             withNamespace : 'm'
             withXmlTag    : @"SubscriptionId"
             withHandler   : [MPSEWSSubscriptionIdType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSUnsubscribeType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val forVersion:ver]) return FALSE;
    if ([val subscriptionId] && ![MPSEWSSubscriptionIdType isValid:[val subscriptionId] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSUnsubscribeType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"UnsubscribeType: SubscriptionId=%@ super=%@", _subscriptionId, [super description]];
}

@end

