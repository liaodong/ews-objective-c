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

+ (BOOL) isValid:(MPSEWSGetUserConfigurationType*) val
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val]) return FALSE;
    if ([val userConfigurationName] && ![MPSEWSUserConfigurationNameType isValid:[val userConfigurationName]]) return FALSE;
    if ([val userConfigurationProperties] && ![MPSEWSUserConfigurationPropertyType isValid:[val userConfigurationProperties]]) return FALSE;
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

