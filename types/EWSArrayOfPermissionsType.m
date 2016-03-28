#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSArrayOfPermissionsType.h"
#import "../types/EWSPermissionType.h"


@implementation EWSArrayOfPermissionsType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSArrayOfPermissionsType class]];

    [handler property      : @"permission"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Permission"
             withHandler   : [EWSPermissionType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSArrayOfPermissionsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfPermissionsType: Permission=%@", _permission];
}

@end

