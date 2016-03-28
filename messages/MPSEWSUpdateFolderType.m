#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSUpdateFolderType.h"
#import "../types/MPSEWSNonEmptyArrayOfFolderChangesType.h"


@implementation MPSEWSUpdateFolderType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSUpdateFolderType class]];

    [handler property      : @"folderChanges"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"FolderChanges"
             withHandler   : [MPSEWSNonEmptyArrayOfFolderChangesType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSUpdateFolderType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"UpdateFolderType: FolderChanges=%@ super=%@", _folderChanges, [super description]];
}

@end

