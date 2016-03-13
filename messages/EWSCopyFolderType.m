#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSCopyFolderType.h"


@implementation EWSCopyFolderType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSCopyFolderType class]];

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
    return [EWSCopyFolderType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"CopyFolderType: super=%@", [super description]];
}

@end

