#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfPermissionsType.h"
#import "../types/MPSEWSPermissionType.h"


@implementation MPSEWSArrayOfPermissionsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfPermissionsType class]];

    [handler property      : @"permission"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Permission"
             withHandler   : [MPSEWSPermissionType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSArrayOfPermissionsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfPermissionsType: Permission=%@", _permission];
}

@end

