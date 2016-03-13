#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSUpdateFolderType.h"


@implementation EWSUpdateFolderType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSUpdateFolderType class]];

    [handler property      : @"folderChanges"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"FolderChanges"
             withHandler   : [EWSNonEmptyArrayOfFolderChangesType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSUpdateFolderType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"UpdateFolderType: FolderChanges=%@ super=%@", _folderChanges, [super description]];
}

@end

