#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSBaseMoveCopyFolderType.h"
#import "../types/EWSNonEmptyArrayOfBaseFolderIdsType.h"
#import "../types/EWSTargetFolderIdType.h"


@implementation EWSBaseMoveCopyFolderType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSBaseMoveCopyFolderType class]];

    [handler property      : @"toFolderId"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"ToFolderId"
             withHandler   : [EWSTargetFolderIdType class]];

    [handler property      : @"folderIds"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"FolderIds"
             withHandler   : [EWSNonEmptyArrayOfBaseFolderIdsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSBaseMoveCopyFolderType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"BaseMoveCopyFolderType: ToFolderId=%@ FolderIds=%@ super=%@", _toFolderId, _folderIds, [super description]];
}

@end

