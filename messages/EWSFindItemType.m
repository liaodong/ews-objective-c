#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSFindItemType.h"


@implementation EWSFindItemType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSFindItemType class]];

    [handler property    : @"traversal"
             isRequired  : TRUE
             withAttrTag : @"Traversal"
             withHandler : [EWSItemQueryTraversalType class]];

    [handler property      : @"itemShape"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"ItemShape"
             withHandler   : [EWSItemResponseShapeType class]];

    [handler property      : @"restriction"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"Restriction"
             withHandler   : [EWSRestrictionType class]];

    [handler property      : @"sortOrder"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"SortOrder"
             withHandler   : [EWSNonEmptyArrayOfFieldOrdersType class]];

    [handler property      : @"parentFolderIds"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"ParentFolderIds"
             withHandler   : [EWSNonEmptyArrayOfBaseFolderIdsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSFindItemType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FindItemType: Traversal=%@ ItemShape=%@ Restriction=%@ SortOrder=%@ ParentFolderIds=%@ super=%@", _traversal, _itemShape, _restriction, _sortOrder, _parentFolderIds, [super description]];
}

@end

