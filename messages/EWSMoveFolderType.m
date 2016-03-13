#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSMoveFolderType.h"


@implementation EWSMoveFolderType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSMoveFolderType class]];

    [handler property      : @"toFolderId"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"ToFolderId"
             withHandler   : [EWSTargetFolderIdType class]];

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
    return [EWSMoveFolderType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"MoveFolderType: super=%@", [super description]];
}

@end

