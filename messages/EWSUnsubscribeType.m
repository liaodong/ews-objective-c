#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSUnsubscribeType.h"
#import "../types/EWSSubscriptionIdType.h"


@implementation EWSUnsubscribeType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSUnsubscribeType class]];

    [handler property      : @"subscriptionId"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"SubscriptionId"
             withHandler   : [EWSSubscriptionIdType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSUnsubscribeType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"UnsubscribeType: SubscriptionId=%@ super=%@", _subscriptionId, [super description]];
}

@end

