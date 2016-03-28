#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSDeleteFolderType.h"
#import "../types/EWSDisposalType.h"
#import "../types/EWSNonEmptyArrayOfBaseFolderIdsType.h"


@implementation EWSDeleteFolderType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSDeleteFolderType class]];

    [handler property    : @"deleteType"
             isRequired  : TRUE
             withAttrTag : @"DeleteType"
             withHandler : [EWSDisposalType class]];

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
    return [EWSDeleteFolderType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"DeleteFolderType: DeleteType=%@ FolderIds=%@ super=%@", _deleteType, _folderIds, [super description]];
}

@end

