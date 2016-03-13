#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSExchangeImpersonationType.h"


@implementation EWSExchangeImpersonationType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSExchangeImpersonationType class]];

    [handler property   : @"connectingSID"
             isRequired : TRUE
             withXmlTag : @"ConnectingSID"
             withHandler: [EWSConnectingSIDType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSExchangeImpersonationType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ExchangeImpersonationType: ConnectingSID=%@", _connectingSID];
}

@end

