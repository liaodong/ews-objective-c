#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSCreateUserConfigurationType.h"
#import "../types/MPSEWSUserConfigurationType.h"


@implementation MPSEWSCreateUserConfigurationType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSCreateUserConfigurationType class]];

    [handler property      : @"userConfiguration"
             withNamespace : 'm'
             withXmlTag    : @"UserConfiguration"
             withHandler   : [MPSEWSUserConfigurationType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSCreateUserConfigurationType*) val
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val]) return FALSE;
    if ([val userConfiguration] && ![MPSEWSUserConfigurationType isValid:[val userConfiguration]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSCreateUserConfigurationType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"CreateUserConfigurationType: UserConfiguration=%@ super=%@", _userConfiguration, [super description]];
}

@end

