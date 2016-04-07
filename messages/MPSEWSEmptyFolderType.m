#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSEmptyFolderType.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../types/MPSEWSDisposalType.h"
#import "../types/MPSEWSNonEmptyArrayOfBaseFolderIdsType.h"


@implementation MPSEWSEmptyFolderType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSEmptyFolderType class]];

    [handler property    : @"deleteType"
             withAttrTag : @"DeleteType"
             withHandler : [MPSEWSDisposalType class]];

    [handler property    : @"deleteSubFolders"
             withAttrTag : @"DeleteSubFolders"
             withHandler : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"folderIds"
             withNamespace : 'm'
             withXmlTag    : @"FolderIds"
             withHandler   : [MPSEWSNonEmptyArrayOfBaseFolderIdsType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSEmptyFolderType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val forVersion:ver]) return FALSE;
    if ([val deleteType] && ![MPSEWSDisposalType isValid:[val deleteType] forVersion: ver]) return FALSE;
    if ([val deleteSubFolders] && ![MPSEWSBooleanTypeHandler isValid:[val deleteSubFolders] forVersion: ver]) return FALSE;
    if ([val folderIds] && ![MPSEWSNonEmptyArrayOfBaseFolderIdsType isValid:[val folderIds] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSEmptyFolderType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"EmptyFolderType: DeleteType=%@ DeleteSubFolders=%@ FolderIds=%@ super=%@", _deleteType, _deleteSubFolders, _folderIds, [super description]];
}

@end

