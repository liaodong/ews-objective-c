#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSProxySecurityContextType.h"


@implementation EWSProxySecurityContextType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSProxySecurityContextType class] andContentHandlerClass:[EWSBase64BinaryTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSProxySecurityContextType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ProxySecurityContextType: super=%@", [super description]];
}

@end

