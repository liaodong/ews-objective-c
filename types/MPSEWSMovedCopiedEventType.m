#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSMovedCopiedEventType.h"
#import "../handlers/MPSEWSDateTimeTypeHandler.h"
#import "../types/MPSEWSFolderIdType.h"
#import "../types/MPSEWSItemIdType.h"
#import "../types/MPSEWSWatermarkType.h"


@implementation MPSEWSMovedCopiedEventType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSMovedCopiedEventType class]];

    [handler property      : @"watermark"
             withNamespace : 't'
             withXmlTag    : @"Watermark"
             withHandler   : [MPSEWSWatermarkType class]];

    [handler property      : @"timeStamp"
             withNamespace : 't'
             withXmlTag    : @"TimeStamp"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"folderId"
             withNamespace : 't'
             withXmlTag    : @"FolderId"
             withHandler   : [MPSEWSFolderIdType class]];

    [handler property      : @"itemId"
             withNamespace : 't'
             withXmlTag    : @"ItemId"
             withHandler   : [MPSEWSItemIdType class]];

    [handler property      : @"parentFolderId"
             withNamespace : 't'
             withXmlTag    : @"ParentFolderId"
             withHandler   : [MPSEWSFolderIdType class]];

    [handler property      : @"oldFolderId"
             withNamespace : 't'
             withXmlTag    : @"OldFolderId"
             withHandler   : [MPSEWSFolderIdType class]];

    [handler property      : @"oldItemId"
             withNamespace : 't'
             withXmlTag    : @"OldItemId"
             withHandler   : [MPSEWSItemIdType class]];

    [handler property      : @"oldParentFolderId"
             withNamespace : 't'
             withXmlTag    : @"OldParentFolderId"
             withHandler   : [MPSEWSFolderIdType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSMovedCopiedEventType*) val
{   (void) val;
    if (![MPSEWSBaseObjectChangedEventType isValid:val]) return FALSE;
    if ([val oldFolderId] && ![MPSEWSFolderIdType isValid:[val oldFolderId]]) return FALSE;
    if ([val oldItemId] && ![MPSEWSItemIdType isValid:[val oldItemId]]) return FALSE;
    if ([val oldParentFolderId] && ![MPSEWSFolderIdType isValid:[val oldParentFolderId]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSMovedCopiedEventType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"MovedCopiedEventType: OldFolderId=%@ OldItemId=%@ OldParentFolderId=%@ super=%@", _oldFolderId, _oldItemId, _oldParentFolderId, [super description]];
}

@end

