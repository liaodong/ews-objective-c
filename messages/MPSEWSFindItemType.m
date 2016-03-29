#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSFindItemType.h"
#import "../types/MPSEWSItemQueryTraversalType.h"
#import "../types/MPSEWSItemResponseShapeType.h"
#import "../types/MPSEWSNonEmptyArrayOfBaseFolderIdsType.h"
#import "../types/MPSEWSNonEmptyArrayOfFieldOrdersType.h"
#import "../types/MPSEWSRestrictionType.h"


@implementation MPSEWSFindItemType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSFindItemType class]];

    [handler property    : @"traversal"
             withAttrTag : @"Traversal"
             withHandler : [MPSEWSItemQueryTraversalType class]];

    [handler property      : @"itemShape"
             withNamespace : 'm'
             withXmlTag    : @"ItemShape"
             withHandler   : [MPSEWSItemResponseShapeType class]];

    [handler property      : @"restriction"
             withNamespace : 'm'
             withXmlTag    : @"Restriction"
             withHandler   : [MPSEWSRestrictionType class]];

    [handler property      : @"sortOrder"
             withNamespace : 'm'
             withXmlTag    : @"SortOrder"
             withHandler   : [MPSEWSNonEmptyArrayOfFieldOrdersType class]];

    [handler property      : @"parentFolderIds"
             withNamespace : 'm'
             withXmlTag    : @"ParentFolderIds"
             withHandler   : [MPSEWSNonEmptyArrayOfBaseFolderIdsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSFindItemType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FindItemType: Traversal=%@ ItemShape=%@ Restriction=%@ SortOrder=%@ ParentFolderIds=%@ super=%@", _traversal, _itemShape, _restriction, _sortOrder, _parentFolderIds, [super description]];
}

@end

