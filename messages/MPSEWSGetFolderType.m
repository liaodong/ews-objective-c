#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSGetFolderType.h"
#import "../types/MPSEWSFolderResponseShapeType.h"
#import "../types/MPSEWSNonEmptyArrayOfBaseFolderIdsType.h"


@implementation MPSEWSGetFolderType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSGetFolderType class]];

    [handler property      : @"folderShape"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"FolderShape"
             withHandler   : [MPSEWSFolderResponseShapeType class]];

    [handler property      : @"folderIds"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"FolderIds"
             withHandler   : [MPSEWSNonEmptyArrayOfBaseFolderIdsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSGetFolderType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetFolderType: FolderShape=%@ FolderIds=%@ super=%@", _folderShape, _folderIds, [super description]];
}

@end

