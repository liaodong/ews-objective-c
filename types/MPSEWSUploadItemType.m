#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSUploadItemType.h"
#import "../handlers/MPSEWSBase64BinaryTypeHandler.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../types/MPSEWSCreateActionType.h"
#import "../types/MPSEWSFolderIdType.h"
#import "../types/MPSEWSItemIdType.h"


@implementation MPSEWSUploadItemType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSUploadItemType class]];

    [handler property    : @"createAction"
             withAttrTag : @"CreateAction"
             withHandler : [MPSEWSCreateActionType class]];

    [handler property    : @"isAssociated"
             withAttrTag : @"IsAssociated"
             withHandler : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"parentFolderId"
             withNamespace : 't'
             withXmlTag    : @"ParentFolderId"
             withHandler   : [MPSEWSFolderIdType class]];

    [handler property      : @"itemId"
             withNamespace : 't'
             withXmlTag    : @"ItemId"
             withHandler   : [MPSEWSItemIdType class]];

    [handler property      : @"data"
             withNamespace : 't'
             withXmlTag    : @"Data"
             withHandler   : [MPSEWSBase64BinaryTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSUploadItemType*) val
{   (void) val;
    if ([val createAction] && ![MPSEWSCreateActionType isValid:[val createAction]]) return FALSE;
    if ([val isAssociated] && ![MPSEWSBooleanTypeHandler isValid:[val isAssociated]]) return FALSE;
    if ([val parentFolderId] && ![MPSEWSFolderIdType isValid:[val parentFolderId]]) return FALSE;
    if ([val itemId] && ![MPSEWSItemIdType isValid:[val itemId]]) return FALSE;
    if ([val data] && ![MPSEWSBase64BinaryTypeHandler isValid:[val data]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSUploadItemType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"UploadItemType: CreateAction=%@ IsAssociated=%@ ParentFolderId=%@ ItemId=%@ Data=%@", _createAction, _isAssociated, _parentFolderId, _itemId, _data];
}

@end

