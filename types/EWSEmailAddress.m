#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSEmailAddress.h"


@implementation EWSEmailAddress 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSEmailAddress class]];

    [handler property   : @"name"
             isRequired : FALSE
             withXmlTag : @"Name"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"address"
             isRequired : TRUE
             withXmlTag : @"Address"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"routingType"
             isRequired : FALSE
             withXmlTag : @"RoutingType"
             withHandler: [EWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSEmailAddress class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"EmailAddress: Name=%@ Address=%@ RoutingType=%@", _name, _address, _routingType];
}

@end

