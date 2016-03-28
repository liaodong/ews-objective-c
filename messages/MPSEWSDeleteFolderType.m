#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSDeleteFolderType.h"
#import "../types/MPSEWSDisposalType.h"
#import "../types/MPSEWSNonEmptyArrayOfBaseFolderIdsType.h"


@implementation MPSEWSDeleteFolderType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSDeleteFolderType class]];

    [handler property    : @"deleteType"
             isRequired  : TRUE
             withAttrTag : @"DeleteType"
             withHandler : [MPSEWSDisposalType class]];

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
    return [MPSEWSDeleteFolderType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"DeleteFolderType: DeleteType=%@ FolderIds=%@ super=%@", _deleteType, _folderIds, [super description]];
}

@end

