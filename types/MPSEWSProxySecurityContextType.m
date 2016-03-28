#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSProxySecurityContextType.h"


@implementation MPSEWSProxySecurityContextType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSProxySecurityContextType class] andContentHandlerClass:[MPSEWSBase64BinaryTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSProxySecurityContextType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ProxySecurityContextType: super=%@", [super description]];
}

@end

