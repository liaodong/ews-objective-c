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
             withAttrTag : @"DeleteType"
             withHandler : [MPSEWSDisposalType class]];

    [handler property      : @"folderIds"
             withNamespace : 'm'
             withXmlTag    : @"FolderIds"
             withHandler   : [MPSEWSNonEmptyArrayOfBaseFolderIdsType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSDeleteFolderType*) val
{   (void) val;
    return TRUE;
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

