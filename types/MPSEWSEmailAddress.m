#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSEmailAddress.h"
#import "../handlers/MPSEWSStringTypeHandler.h"


@implementation MPSEWSEmailAddress 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSEmailAddress class]];

    [handler property      : @"name"
             withNamespace : 't'
             withXmlTag    : @"Name"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"address"
             withNamespace : 't'
             withXmlTag    : @"Address"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"routingType"
             withNamespace : 't'
             withXmlTag    : @"RoutingType"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSEmailAddress*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val name] && ![MPSEWSStringTypeHandler isValid:[val name] forVersion:ver]) return FALSE;
    if ([val address] && ![MPSEWSStringTypeHandler isValid:[val address] forVersion:ver]) return FALSE;
    if ([val routingType] && ![MPSEWSStringTypeHandler isValid:[val routingType] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSEmailAddress class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"EmailAddress: Name=%@ Address=%@ RoutingType=%@", _name, _address, _routingType];
}

@end

