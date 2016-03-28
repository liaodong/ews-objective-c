#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSFindFolderType.h"
#import "../types/EWSFolderQueryTraversalType.h"
#import "../types/EWSFolderResponseShapeType.h"
#import "../types/EWSNonEmptyArrayOfBaseFolderIdsType.h"
#import "../types/EWSRestrictionType.h"


@implementation EWSFindFolderType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSFindFolderType class]];

    [handler property    : @"traversal"
             isRequired  : TRUE
             withAttrTag : @"Traversal"
             withHandler : [EWSFolderQueryTraversalType class]];

    [handler property      : @"folderShape"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"FolderShape"
             withHandler   : [EWSFolderResponseShapeType class]];

    [handler property      : @"restriction"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"Restriction"
             withHandler   : [EWSRestrictionType class]];

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
    return [EWSFindFolderType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FindFolderType: Traversal=%@ FolderShape=%@ Restriction=%@ ParentFolderIds=%@ super=%@", _traversal, _folderShape, _restriction, _parentFolderIds, [super description]];
}

@end

