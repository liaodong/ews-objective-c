#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfResponseMessagesType.h"
#import "../messages/MPSEWSAttachmentInfoResponseMessageType.h"
#import "../messages/MPSEWSConvertIdResponseMessageType.h"
#import "../messages/MPSEWSDeleteAttachmentResponseMessageType.h"
#import "../messages/MPSEWSExpandDLResponseMessageType.h"
#import "../messages/MPSEWSFindFolderResponseMessageType.h"
#import "../messages/MPSEWSFindItemResponseMessageType.h"
#import "../messages/MPSEWSFolderInfoResponseMessageType.h"
#import "../messages/MPSEWSGetEventsResponseMessageType.h"
#import "../messages/MPSEWSItemInfoResponseMessageType.h"
#import "../messages/MPSEWSResolveNamesResponseMessageType.h"
#import "../messages/MPSEWSResponseMessageType.h"
#import "../messages/MPSEWSSendNotificationResponseMessageType.h"
#import "../messages/MPSEWSSubscribeResponseMessageType.h"
#import "../messages/MPSEWSSyncFolderHierarchyResponseMessageType.h"
#import "../messages/MPSEWSSyncFolderItemsResponseMessageType.h"
#import "../messages/MPSEWSUpdateItemResponseMessageType.h"


@implementation MPSEWSArrayOfResponseMessagesType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfResponseMessagesType class]];

    [handler property      : @"createItemResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"CreateItemResponseMessage"
             withHandler   : [MPSEWSItemInfoResponseMessageType class]];

    [handler property      : @"deleteItemResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"DeleteItemResponseMessage"
             withHandler   : [MPSEWSResponseMessageType class]];

    [handler property      : @"getItemResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"GetItemResponseMessage"
             withHandler   : [MPSEWSItemInfoResponseMessageType class]];

    [handler property      : @"updateItemResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"UpdateItemResponseMessage"
             withHandler   : [MPSEWSUpdateItemResponseMessageType class]];

    [handler property      : @"sendItemResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"SendItemResponseMessage"
             withHandler   : [MPSEWSResponseMessageType class]];

    [handler property      : @"deleteFolderResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"DeleteFolderResponseMessage"
             withHandler   : [MPSEWSResponseMessageType class]];

    [handler property      : @"createFolderResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"CreateFolderResponseMessage"
             withHandler   : [MPSEWSFolderInfoResponseMessageType class]];

    [handler property      : @"getFolderResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"GetFolderResponseMessage"
             withHandler   : [MPSEWSFolderInfoResponseMessageType class]];

    [handler property      : @"findFolderResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"FindFolderResponseMessage"
             withHandler   : [MPSEWSFindFolderResponseMessageType class]];

    [handler property      : @"updateFolderResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"UpdateFolderResponseMessage"
             withHandler   : [MPSEWSFolderInfoResponseMessageType class]];

    [handler property      : @"moveFolderResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"MoveFolderResponseMessage"
             withHandler   : [MPSEWSFolderInfoResponseMessageType class]];

    [handler property      : @"pCopyFolderResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"CopyFolderResponseMessage"
             withHandler   : [MPSEWSFolderInfoResponseMessageType class]];

    [handler property      : @"createAttachmentResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"CreateAttachmentResponseMessage"
             withHandler   : [MPSEWSAttachmentInfoResponseMessageType class]];

    [handler property      : @"deleteAttachmentResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"DeleteAttachmentResponseMessage"
             withHandler   : [MPSEWSDeleteAttachmentResponseMessageType class]];

    [handler property      : @"getAttachmentResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"GetAttachmentResponseMessage"
             withHandler   : [MPSEWSAttachmentInfoResponseMessageType class]];

    [handler property      : @"findItemResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"FindItemResponseMessage"
             withHandler   : [MPSEWSFindItemResponseMessageType class]];

    [handler property      : @"moveItemResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"MoveItemResponseMessage"
             withHandler   : [MPSEWSItemInfoResponseMessageType class]];

    [handler property      : @"pCopyItemResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"CopyItemResponseMessage"
             withHandler   : [MPSEWSItemInfoResponseMessageType class]];

    [handler property      : @"resolveNamesResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"ResolveNamesResponseMessage"
             withHandler   : [MPSEWSResolveNamesResponseMessageType class]];

    [handler property      : @"expandDLResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"ExpandDLResponseMessage"
             withHandler   : [MPSEWSExpandDLResponseMessageType class]];

    [handler property      : @"getEventsResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"GetEventsResponseMessage"
             withHandler   : [MPSEWSGetEventsResponseMessageType class]];

    [handler property      : @"subscribeResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"SubscribeResponseMessage"
             withHandler   : [MPSEWSSubscribeResponseMessageType class]];

    [handler property      : @"unsubscribeResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"UnsubscribeResponseMessage"
             withHandler   : [MPSEWSResponseMessageType class]];

    [handler property      : @"sendNotificationResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"SendNotificationResponseMessage"
             withHandler   : [MPSEWSSendNotificationResponseMessageType class]];

    [handler property      : @"syncFolderHierarchyResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"SyncFolderHierarchyResponseMessage"
             withHandler   : [MPSEWSSyncFolderHierarchyResponseMessageType class]];

    [handler property      : @"syncFolderItemsResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"SyncFolderItemsResponseMessage"
             withHandler   : [MPSEWSSyncFolderItemsResponseMessageType class]];

    [handler property      : @"createManagedFolderResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"CreateManagedFolderResponseMessage"
             withHandler   : [MPSEWSFolderInfoResponseMessageType class]];

    [handler property      : @"convertIdResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"ConvertIdResponseMessage"
             withHandler   : [MPSEWSConvertIdResponseMessageType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSArrayOfResponseMessagesType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfResponseMessagesType: CreateItemResponseMessage=%@ DeleteItemResponseMessage=%@ GetItemResponseMessage=%@ UpdateItemResponseMessage=%@ SendItemResponseMessage=%@ DeleteFolderResponseMessage=%@ CreateFolderResponseMessage=%@ GetFolderResponseMessage=%@ FindFolderResponseMessage=%@ UpdateFolderResponseMessage=%@ MoveFolderResponseMessage=%@ CopyFolderResponseMessage=%@ CreateAttachmentResponseMessage=%@ DeleteAttachmentResponseMessage=%@ GetAttachmentResponseMessage=%@ FindItemResponseMessage=%@ MoveItemResponseMessage=%@ CopyItemResponseMessage=%@ ResolveNamesResponseMessage=%@ ExpandDLResponseMessage=%@ GetEventsResponseMessage=%@ SubscribeResponseMessage=%@ UnsubscribeResponseMessage=%@ SendNotificationResponseMessage=%@ SyncFolderHierarchyResponseMessage=%@ SyncFolderItemsResponseMessage=%@ CreateManagedFolderResponseMessage=%@ ConvertIdResponseMessage=%@", _createItemResponseMessage, _deleteItemResponseMessage, _getItemResponseMessage, _updateItemResponseMessage, _sendItemResponseMessage, _deleteFolderResponseMessage, _createFolderResponseMessage, _getFolderResponseMessage, _findFolderResponseMessage, _updateFolderResponseMessage, _moveFolderResponseMessage, _pCopyFolderResponseMessage, _createAttachmentResponseMessage, _deleteAttachmentResponseMessage, _getAttachmentResponseMessage, _findItemResponseMessage, _moveItemResponseMessage, _pCopyItemResponseMessage, _resolveNamesResponseMessage, _expandDLResponseMessage, _getEventsResponseMessage, _subscribeResponseMessage, _unsubscribeResponseMessage, _sendNotificationResponseMessage, _syncFolderHierarchyResponseMessage, _syncFolderItemsResponseMessage, _createManagedFolderResponseMessage, _convertIdResponseMessage];
}

@end

