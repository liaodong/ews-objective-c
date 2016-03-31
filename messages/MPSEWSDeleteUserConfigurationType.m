#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSDeleteUserConfigurationType.h"
#import "../types/MPSEWSUserConfigurationNameType.h"


@implementation MPSEWSDeleteUserConfigurationType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSDeleteUserConfigurationType class]];

    [handler property      : @"userConfigurationName"
             withNamespace : 'm'
             withXmlTag    : @"UserConfigurationName"
             withHandler   : [MPSEWSUserConfigurationNameType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSDeleteUserConfigurationType*) val
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val]) return FALSE;
    if ([val userConfigurationName] && ![MPSEWSUserConfigurationNameType isValid:[val userConfigurationName]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSDeleteUserConfigurationType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"DeleteUserConfigurationType: UserConfigurationName=%@ super=%@", _userConfigurationName, [super description]];
}

@end

