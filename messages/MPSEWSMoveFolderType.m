#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSMoveFolderType.h"
#import "../types/MPSEWSNonEmptyArrayOfBaseFolderIdsType.h"
#import "../types/MPSEWSTargetFolderIdType.h"


@implementation MPSEWSMoveFolderType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSMoveFolderType class]];

    [handler property      : @"toFolderId"
             withNamespace : 'm'
             withXmlTag    : @"ToFolderId"
             withHandler   : [MPSEWSTargetFolderIdType class]];

    [handler property      : @"folderIds"
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
    return [MPSEWSMoveFolderType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"MoveFolderType: super=%@", [super description]];
}

@end

