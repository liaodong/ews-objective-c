#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSExchangeImpersonationType.h"
#import "../types/MPSEWSConnectingSIDType.h"


@implementation MPSEWSExchangeImpersonationType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSExchangeImpersonationType class]];

    [handler property      : @"connectingSID"
             withNamespace : 't'
             withXmlTag    : @"ConnectingSID"
             withHandler   : [MPSEWSConnectingSIDType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSExchangeImpersonationType*) val
{   (void) val;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSExchangeImpersonationType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ExchangeImpersonationType: ConnectingSID=%@", _connectingSID];
}

@end

