#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSPermissionSetType.h"
#import "../types/EWSArrayOfPermissionsType.h"
#import "../types/EWSArrayOfUnknownEntriesType.h"


@implementation EWSPermissionSetType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSPermissionSetType class]];

    [handler property      : @"permissions"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Permissions"
             withHandler   : [EWSArrayOfPermissionsType class]];

    [handler property      : @"unknownEntries"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"UnknownEntries"
             withHandler   : [EWSArrayOfUnknownEntriesType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSPermissionSetType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"PermissionSetType: Permissions=%@ UnknownEntries=%@", _permissions, _unknownEntries];
}

@end

