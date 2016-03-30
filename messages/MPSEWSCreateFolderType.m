#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSCreateFolderType.h"
#import "../types/MPSEWSNonEmptyArrayOfFoldersType.h"
#import "../types/MPSEWSTargetFolderIdType.h"


@implementation MPSEWSCreateFolderType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSCreateFolderType class]];

    [handler property      : @"parentFolderId"
             withNamespace : 'm'
             withXmlTag    : @"ParentFolderId"
             withHandler   : [MPSEWSTargetFolderIdType class]];

    [handler property      : @"folders"
             withNamespace : 'm'
             withXmlTag    : @"Folders"
             withHandler   : [MPSEWSNonEmptyArrayOfFoldersType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSCreateFolderType*) val
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val]) return FALSE;
    if ([val parentFolderId] && ![MPSEWSTargetFolderIdType isValid:[val parentFolderId]]) return FALSE;
    if ([val folders] && ![MPSEWSNonEmptyArrayOfFoldersType isValid:[val folders]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSCreateFolderType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"CreateFolderType: ParentFolderId=%@ Folders=%@ super=%@", _parentFolderId, _folders, [super description]];
}

@end

