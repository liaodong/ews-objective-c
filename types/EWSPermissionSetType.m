#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSPermissionSetType.h"


@implementation EWSPermissionSetType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSPermissionSetType class]];

    [handler property   : @"permissions"
             isRequired : TRUE
             withXmlTag : @"Permissions"
             withHandler: [EWSArrayOfPermissionsType class]];

    [handler property   : @"unknownEntries"
             isRequired : FALSE
             withXmlTag : @"UnknownEntries"
             withHandler: [EWSArrayOfUnknownEntriesType class]];

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

