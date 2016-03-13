#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSCreateFolderType.h"


@implementation EWSCreateFolderType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSCreateFolderType class]];

    [handler property      : @"parentFolderId"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"ParentFolderId"
             withHandler   : [EWSTargetFolderIdType class]];

    [handler property      : @"folders"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"Folders"
             withHandler   : [EWSNonEmptyArrayOfFoldersType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSCreateFolderType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"CreateFolderType: ParentFolderId=%@ Folders=%@ super=%@", _parentFolderId, _folders, [super description]];
}

@end

