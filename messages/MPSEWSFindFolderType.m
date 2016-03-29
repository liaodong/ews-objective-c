#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSFindFolderType.h"
#import "../types/MPSEWSFolderQueryTraversalType.h"
#import "../types/MPSEWSFolderResponseShapeType.h"
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
    return [NSString stringWithFormat:@"FindFolderType: Traversal=%@ FolderShape=%@ Restriction=%@ ParentFolderIds=%@ super=%@", _traversal, _folderShape, _restriction, _parentFolderIds, [super description]];
}

@end

