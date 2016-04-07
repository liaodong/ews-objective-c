#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSRefreshSharingFolderType.h"
#import "../types/MPSEWSFolderIdType.h"


@implementation MPSEWSRefreshSharingFolderType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSRefreshSharingFolderType class]];

    [handler property      : @"sharingFolderId"
             withNamespace : 'm'
             withXmlTag    : @"SharingFolderId"
             withHandler   : [MPSEWSFolderIdType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSRefreshSharingFolderType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val forVersion:ver]) return FALSE;
    if ([val sharingFolderId] && ![MPSEWSFolderIdType isValid:[val sharingFolderId] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSRefreshSharingFolderType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"RefreshSharingFolderType: SharingFolderId=%@ super=%@", _sharingFolderId, [super description]];
}

@end

