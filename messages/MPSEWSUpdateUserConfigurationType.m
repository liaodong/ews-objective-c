#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSUpdateUserConfigurationType.h"
#import "../types/MPSEWSUserConfigurationType.h"


@implementation MPSEWSUpdateUserConfigurationType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSUpdateUserConfigurationType class]];

    [handler property      : @"userConfiguration"
             withNamespace : 'm'
             withXmlTag    : @"UserConfiguration"
             withHandler   : [MPSEWSUserConfigurationType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSUpdateUserConfigurationType*) val
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
    return [MPSEWSUpdateUserConfigurationType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"UpdateUserConfigurationType: UserConfiguration=%@ super=%@", _userConfiguration, [super description]];
}

@end

