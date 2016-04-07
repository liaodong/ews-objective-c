#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSFindConversationType.h"
#import "../types/MPSEWSIndexedPageViewType.h"
#import "../types/MPSEWSNonEmptyArrayOfFieldOrdersType.h"
#import "../types/MPSEWSTargetFolderIdType.h"


@implementation MPSEWSFindConversationType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSFindConversationType class]];

    [handler property      : @"indexedPageItemView"
             withNamespace : 'm'
             withXmlTag    : @"IndexedPageItemView"
             withHandler   : [MPSEWSIndexedPageViewType class]];

    [handler property      : @"sortOrder"
             withNamespace : 'm'
             withXmlTag    : @"SortOrder"
             withHandler   : [MPSEWSNonEmptyArrayOfFieldOrdersType class]];

    [handler property      : @"parentFolderId"
             withNamespace : 'm'
             withXmlTag    : @"ParentFolderId"
             withHandler   : [MPSEWSTargetFolderIdType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSFindConversationType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val forVersion:ver]) return FALSE;
    if ([val indexedPageItemView] && ![MPSEWSIndexedPageViewType isValid:[val indexedPageItemView] forVersion:ver]) return FALSE;
    if ([val sortOrder] && ![MPSEWSNonEmptyArrayOfFieldOrdersType isValid:[val sortOrder] forVersion:ver]) return FALSE;
    if ([val parentFolderId] && ![MPSEWSTargetFolderIdType isValid:[val parentFolderId] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSFindConversationType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FindConversationType: IndexedPageItemView=%@ SortOrder=%@ ParentFolderId=%@ super=%@", _indexedPageItemView, _sortOrder, _parentFolderId, [super description]];
}

@end

