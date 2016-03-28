#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSPermissionSetType.h"
#import "../types/MPSEWSArrayOfPermissionsType.h"
#import "../types/MPSEWSArrayOfUnknownEntriesType.h"


@implementation MPSEWSPermissionSetType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSPermissionSetType class]];

    [handler property      : @"permissions"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Permissions"
             withHandler   : [MPSEWSArrayOfPermissionsType class]];

    [handler property      : @"unknownEntries"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"UnknownEntries"
             withHandler   : [MPSEWSArrayOfUnknownEntriesType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSPermissionSetType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"PermissionSetType: Permissions=%@ UnknownEntries=%@", _permissions, _unknownEntries];
}

@end

