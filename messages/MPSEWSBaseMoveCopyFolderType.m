#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSBaseMoveCopyFolderType.h"
#import "../types/MPSEWSNonEmptyArrayOfBaseFolderIdsType.h"
#import "../types/MPSEWSTargetFolderIdType.h"


@implementation MPSEWSBaseMoveCopyFolderType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSBaseMoveCopyFolderType class]];

    [handler property      : @"toFolderId"
             withNamespace : 'm'
             withXmlTag    : @"ToFolderId"
             withHandler   : [MPSEWSTargetFolderIdType class]];

    [handler property      : @"folderIds"
             withNamespace : 'm'
             withXmlTag    : @"FolderIds"
             withHandler   : [MPSEWSNonEmptyArrayOfBaseFolderIdsType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSBaseMoveCopyFolderType*) val
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val]) return FALSE;
    if ([val toFolderId] && ![MPSEWSTargetFolderIdType isValid:[val toFolderId]]) return FALSE;
    if ([val folderIds] && ![MPSEWSNonEmptyArrayOfBaseFolderIdsType isValid:[val folderIds]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSBaseMoveCopyFolderType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"BaseMoveCopyFolderType: ToFolderId=%@ FolderIds=%@ super=%@", _toFolderId, _folderIds, [super description]];
}

@end

