#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSGetUserConfigurationType.h"
#import "../types/MPSEWSUserConfigurationNameType.h"
#import "../types/MPSEWSUserConfigurationPropertyType.h"


@implementation MPSEWSGetUserConfigurationType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSGetUserConfigurationType class]];

    [handler property      : @"userConfigurationName"
             withNamespace : 'm'
             withXmlTag    : @"UserConfigurationName"
             withHandler   : [MPSEWSUserConfigurationNameType class]];

    [handler property      : @"userConfigurationProperties"
             withNamespace : 'm'
             withXmlTag    : @"UserConfigurationProperties"
             withHandler   : [MPSEWSUserConfigurationPropertyType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSGetUserConfigurationType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val forVersion:ver]) return FALSE;
    if ([val userConfigurationName] && ![MPSEWSUserConfigurationNameType isValid:[val userConfigurationName] forVersion:ver]) return FALSE;
    if ([val userConfigurationProperties] && ![MPSEWSUserConfigurationPropertyType isValid:[val userConfigurationProperties] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSGetUserConfigurationType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetUserConfigurationType: UserConfigurationName=%@ UserConfigurationProperties=%@ super=%@", _userConfigurationName, _userConfigurationProperties, [super description]];
}

@end

