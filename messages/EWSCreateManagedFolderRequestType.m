#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSCreateManagedFolderRequestType.h"
#import "../types/EWSEmailAddressType.h"
#import "../types/EWSNonEmptyArrayOfFolderNamesType.h"


@implementation EWSCreateManagedFolderRequestType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSCreateManagedFolderRequestType class]];

    [handler property      : @"folderNames"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"FolderNames"
             withHandler   : [EWSNonEmptyArrayOfFolderNamesType class]];

    [handler property      : @"mailbox"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"Mailbox"
             withHandler   : [EWSEmailAddressType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSCreateManagedFolderRequestType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"CreateManagedFolderRequestType: FolderNames=%@ Mailbox=%@ super=%@", _folderNames, _mailbox, [super description]];
}

@end

