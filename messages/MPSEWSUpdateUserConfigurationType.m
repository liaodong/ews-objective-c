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

+ (BOOL) isValid:(MPSEWSUpdateUserConfigurationType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val forVersion:ver]) return FALSE;
    if ([val userConfiguration] && ![MPSEWSUserConfigurationType isValid:[val userConfiguration] forVersion:ver]) return FALSE;
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

