#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSGetFolderType.h"


@implementation EWSGetFolderType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSGetFolderType class]];

    [handler property      : @"folderShape"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"FolderShape"
             withHandler   : [EWSFolderResponseShapeType class]];

    [handler property      : @"folderIds"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"FolderIds"
             withHandler   : [EWSNonEmptyArrayOfBaseFolderIdsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSGetFolderType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetFolderType: FolderShape=%@ FolderIds=%@ super=%@", _folderShape, _folderIds, [super description]];
}

@end

