#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSCreateManagedFolderRequestType.h"
#import "../types/MPSEWSEmailAddressType.h"
#import "../types/MPSEWSNonEmptyArrayOfFolderNamesType.h"


@implementation MPSEWSCreateManagedFolderRequestType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSCreateManagedFolderRequestType class]];

    [handler property      : @"folderNames"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"FolderNames"
             withHandler   : [MPSEWSNonEmptyArrayOfFolderNamesType class]];

    [handler property      : @"mailbox"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"Mailbox"
             withHandler   : [MPSEWSEmailAddressType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSCreateManagedFolderRequestType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"CreateManagedFolderRequestType: FolderNames=%@ Mailbox=%@ super=%@", _folderNames, _mailbox, [super description]];
}

@end

