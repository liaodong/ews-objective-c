#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSFindFolderType.h"
#import "../types/MPSEWSFolderQueryTraversalType.h"
#import "../types/MPSEWSFolderResponseShapeType.h"
#import "../types/MPSEWSFractionalPageViewType.h"
#import "../types/MPSEWSIndexedPageViewType.h"
#import "../types/MPSEWSNonEmptyArrayOfBaseFolderIdsType.h"
#import "../types/MPSEWSRestrictionType.h"


@implementation MPSEWSFindFolderType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSFindFolderType class]];

    [handler property    : @"traversal"
             withAttrTag : @"Traversal"
             withHandler : [MPSEWSFolderQueryTraversalType class]];

    [handler property      : @"folderShape"
             withNamespace : 'm'
             withXmlTag    : @"FolderShape"
             withHandler   : [MPSEWSFolderResponseShapeType class]];

    [handler property      : @"indexedPageFolderView"
             withNamespace : 'm'
             withXmlTag    : @"IndexedPageFolderView"
             withHandler   : [MPSEWSIndexedPageViewType class]];

    [handler property      : @"fractionalPageFolderView"
             withNamespace : 'm'
             withXmlTag    : @"FractionalPageFolderView"
             withHandler   : [MPSEWSFractionalPageViewType class]];

    [handler property      : @"restriction"
             withNamespace : 'm'
             withXmlTag    : @"Restriction"
             withHandler   : [MPSEWSRestrictionType class]];

    [handler property      : @"parentFolderIds"
             withNamespace : 'm'
             withXmlTag    : @"ParentFolderIds"
             withHandler   : [MPSEWSNonEmptyArrayOfBaseFolderIdsType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSFindFolderType*) val
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val]) return FALSE;
    if ([val traversal] && ![MPSEWSFolderQueryTraversalType isValid:[val traversal]]) return FALSE;
    if ([val folderShape] && ![MPSEWSFolderResponseShapeType isValid:[val folderShape]]) return FALSE;
    if ([val indexedPageFolderView] && ![MPSEWSIndexedPageViewType isValid:[val indexedPageFolderView]]) return FALSE;
    if ([val fractionalPageFolderView] && ![MPSEWSFractionalPageViewType isValid:[val fractionalPageFolderView]]) return FALSE;
    if ([val restriction] && ![MPSEWSRestrictionType isValid:[val restriction]]) return FALSE;
    if ([val parentFolderIds] && ![MPSEWSNonEmptyArrayOfBaseFolderIdsType isValid:[val parentFolderIds]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSFindFolderType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FindFolderType: Traversal=%@ FolderShape=%@ IndexedPageFolderView=%@ FractionalPageFolderView=%@ Restriction=%@ ParentFolderIds=%@ super=%@", _traversal, _folderShape, _indexedPageFolderView, _fractionalPageFolderView, _restriction, _parentFolderIds, [super description]];
}

@end

