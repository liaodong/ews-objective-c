#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfPermissionsType.h"
#import "../types/MPSEWSPermissionType.h"


@implementation MPSEWSArrayOfPermissionsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfPermissionsType class]];

    [handler listProperty  : @"permission"
             useSelector   : @"addPermission"
             withNamespace : 't'
             withXmlTag    : @"Permission"
             withHandler   : [MPSEWSPermissionType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSArrayOfPermissionsType*) val
{   (void) val;
    return TRUE;
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

- (void) addPermission:(MPSEWSPermissionType*) elem
{
    if (![self permission]) {
        [self setPermission:[[NSMutableArray<MPSEWSPermissionType*> alloc] init]];
    }
    [_permission addObject:elem];
}

@end

