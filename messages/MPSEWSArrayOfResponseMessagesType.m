#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfResponseMessagesType.h"
#import "../messages/MPSEWSAttachmentInfoResponseMessageType.h"
#import "../messages/MPSEWSConvertIdResponseMessageType.h"
#import "../messages/MPSEWSDeleteAttachmentResponseMessageType.h"
#import "../messages/MPSEWSExpandDLResponseMessageType.h"
#import "../messages/MPSEWSExportItemsResponseMessageType.h"
#import "../messages/MPSEWSFindFolderResponseMessageType.h"
#import "../messages/MPSEWSFindItemResponseMessageType.h"
#import "../messages/MPSEWSFindMailboxStatisticsByKeywordsResponseMessageType.h"
#import "../messages/MPSEWSFolderInfoResponseMessageType.h"
#import "../messages/MPSEWSGetEventsResponseMessageType.h"
#import "../messages/MPSEWSGetPasswordExpirationDateResponseMessageType.h"
#import "../messages/MPSEWSGetRoomListsResponseMessageType.h"
#import "../messages/MPSEWSGetRoomsResponseMessageType.h"
#import "../messages/MPSEWSGetServerTimeZonesResponseMessageType.h"
#import "../messages/MPSEWSGetSharingFolderResponseMessageType.h"
#import "../messages/MPSEWSGetSharingMetadataResponseMessageType.h"
#import "../messages/MPSEWSGetStreamingEventsResponseMessageType.h"
#import "../messages/MPSEWSGetUserConfigurationResponseMessageType.h"
#import "../messages/MPSEWSItemInfoResponseMessageType.h"
#import "../messages/MPSEWSRefreshSharingFolderResponseMessageType.h"
#import "../messages/MPSEWSResolveNamesResponseMessageType.h"
#import "../messages/MPSEWSResponseMessageType.h"
#import "../messages/MPSEWSSendNotificationResponseMessageType.h"
#import "../messages/MPSEWSSubscribeResponseMessageType.h"
#import "../messages/MPSEWSSyncFolderHierarchyResponseMessageType.h"
#import "../messages/MPSEWSSyncFolderItemsResponseMessageType.h"
#import "../messages/MPSEWSUpdateItemResponseMessageType.h"
#import "../messages/MPSEWSUploadItemsResponseMessageType.h"


@implementation MPSEWSArrayOfResponseMessagesType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfResponseMessagesType class]];

    [handler listProperty  : @"createItemResponseMessage"
             useSelector   : @"addCreateItemResponseMessage"
             withNamespace : 'm'
             withXmlTag    : @"CreateItemResponseMessage"
             withHandler   : [MPSEWSItemInfoResponseMessageType class]];

    [handler listProperty  : @"deleteItemResponseMessage"
             useSelector   : @"addDeleteItemResponseMessage"
             withNamespace : 'm'
             withXmlTag    : @"DeleteItemResponseMessage"
             withHandler   : [MPSEWSResponseMessageType class]];

    [handler listProperty  : @"getItemResponseMessage"
             useSelector   : @"addGetItemResponseMessage"
             withNamespace : 'm'
             withXmlTag    : @"GetItemResponseMessage"
             withHandler   : [MPSEWSItemInfoResponseMessageType class]];

    [handler listProperty  : @"updateItemResponseMessage"
             useSelector   : @"addUpdateItemResponseMessage"
             withNamespace : 'm'
             withXmlTag    : @"UpdateItemResponseMessage"
             withHandler   : [MPSEWSUpdateItemResponseMessageType class]];

    [handler listProperty  : @"sendItemResponseMessage"
             useSelector   : @"addSendItemResponseMessage"
             withNamespace : 'm'
             withXmlTag    : @"SendItemResponseMessage"
             withHandler   : [MPSEWSResponseMessageType class]];

    [handler listProperty  : @"deleteFolderResponseMessage"
             useSelector   : @"addDeleteFolderResponseMessage"
             withNamespace : 'm'
             withXmlTag    : @"DeleteFolderResponseMessage"
             withHandler   : [MPSEWSResponseMessageType class]];

    [handler listProperty  : @"emptyFolderResponseMessage"
             useSelector   : @"addEmptyFolderResponseMessage"
             withNamespace : 'm'
             withXmlTag    : @"EmptyFolderResponseMessage"
             withHandler   : [MPSEWSResponseMessageType class]];

    [handler listProperty  : @"createFolderResponseMessage"
             useSelector   : @"addCreateFolderResponseMessage"
             withNamespace : 'm'
             withXmlTag    : @"CreateFolderResponseMessage"
             withHandler   : [MPSEWSFolderInfoResponseMessageType class]];

    [handler listProperty  : @"getFolderResponseMessage"
             useSelector   : @"addGetFolderResponseMessage"
             withNamespace : 'm'
             withXmlTag    : @"GetFolderResponseMessage"
             withHandler   : [MPSEWSFolderInfoResponseMessageType class]];

    [handler listProperty  : @"findFolderResponseMessage"
             useSelector   : @"addFindFolderResponseMessage"
             withNamespace : 'm'
             withXmlTag    : @"FindFolderResponseMessage"
             withHandler   : [MPSEWSFindFolderResponseMessageType class]];

    [handler listProperty  : @"updateFolderResponseMessage"
             useSelector   : @"addUpdateFolderResponseMessage"
             withNamespace : 'm'
             withXmlTag    : @"UpdateFolderResponseMessage"
             withHandler   : [MPSEWSFolderInfoResponseMessageType class]];

    [handler listProperty  : @"moveFolderResponseMessage"
             useSelector   : @"addMoveFolderResponseMessage"
             withNamespace : 'm'
             withXmlTag    : @"MoveFolderResponseMessage"
             withHandler   : [MPSEWSFolderInfoResponseMessageType class]];

    [handler listProperty  : @"pCopyFolderResponseMessage"
             useSelector   : @"addCopyFolderResponseMessage"
             withNamespace : 'm'
             withXmlTag    : @"CopyFolderResponseMessage"
             withHandler   : [MPSEWSFolderInfoResponseMessageType class]];

    [handler listProperty  : @"createAttachmentResponseMessage"
             useSelector   : @"addCreateAttachmentResponseMessage"
             withNamespace : 'm'
             withXmlTag    : @"CreateAttachmentResponseMessage"
             withHandler   : [MPSEWSAttachmentInfoResponseMessageType class]];

    [handler listProperty  : @"deleteAttachmentResponseMessage"
             useSelector   : @"addDeleteAttachmentResponseMessage"
             withNamespace : 'm'
             withXmlTag    : @"DeleteAttachmentResponseMessage"
             withHandler   : [MPSEWSDeleteAttachmentResponseMessageType class]];

    [handler listProperty  : @"getAttachmentResponseMessage"
             useSelector   : @"addGetAttachmentResponseMessage"
             withNamespace : 'm'
             withXmlTag    : @"GetAttachmentResponseMessage"
             withHandler   : [MPSEWSAttachmentInfoResponseMessageType class]];

    [handler listProperty  : @"uploadItemsResponseMessage"
             useSelector   : @"addUploadItemsResponseMessage"
             withNamespace : 'm'
             withXmlTag    : @"UploadItemsResponseMessage"
             withHandler   : [MPSEWSUploadItemsResponseMessageType class]];

    [handler listProperty  : @"exportItemsResponseMessage"
             useSelector   : @"addExportItemsResponseMessage"
             withNamespace : 'm'
             withXmlTag    : @"ExportItemsResponseMessage"
             withHandler   : [MPSEWSExportItemsResponseMessageType class]];

    [handler listProperty  : @"findItemResponseMessage"
             useSelector   : @"addFindItemResponseMessage"
             withNamespace : 'm'
             withXmlTag    : @"FindItemResponseMessage"
             withHandler   : [MPSEWSFindItemResponseMessageType class]];

    [handler listProperty  : @"moveItemResponseMessage"
             useSelector   : @"addMoveItemResponseMessage"
             withNamespace : 'm'
             withXmlTag    : @"MoveItemResponseMessage"
             withHandler   : [MPSEWSItemInfoResponseMessageType class]];

    [handler listProperty  : @"pCopyItemResponseMessage"
             useSelector   : @"addCopyItemResponseMessage"
             withNamespace : 'm'
             withXmlTag    : @"CopyItemResponseMessage"
             withHandler   : [MPSEWSItemInfoResponseMessageType class]];

    [handler listProperty  : @"resolveNamesResponseMessage"
             useSelector   : @"addResolveNamesResponseMessage"
             withNamespace : 'm'
             withXmlTag    : @"ResolveNamesResponseMessage"
             withHandler   : [MPSEWSResolveNamesResponseMessageType class]];

    [handler listProperty  : @"expandDLResponseMessage"
             useSelector   : @"addExpandDLResponseMessage"
             withNamespace : 'm'
             withXmlTag    : @"ExpandDLResponseMessage"
             withHandler   : [MPSEWSExpandDLResponseMessageType class]];

    [handler listProperty  : @"getServerTimeZonesResponseMessage"
             useSelector   : @"addGetServerTimeZonesResponseMessage"
             withNamespace : 'm'
             withXmlTag    : @"GetServerTimeZonesResponseMessage"
             withHandler   : [MPSEWSGetServerTimeZonesResponseMessageType class]];

    [handler listProperty  : @"getEventsResponseMessage"
             useSelector   : @"addGetEventsResponseMessage"
             withNamespace : 'm'
             withXmlTag    : @"GetEventsResponseMessage"
             withHandler   : [MPSEWSGetEventsResponseMessageType class]];

    [handler listProperty  : @"getStreamingEventsResponseMessage"
             useSelector   : @"addGetStreamingEventsResponseMessage"
             withNamespace : 'm'
             withXmlTag    : @"GetStreamingEventsResponseMessage"
             withHandler   : [MPSEWSGetStreamingEventsResponseMessageType class]];

    [handler listProperty  : @"subscribeResponseMessage"
             useSelector   : @"addSubscribeResponseMessage"
             withNamespace : 'm'
             withXmlTag    : @"SubscribeResponseMessage"
             withHandler   : [MPSEWSSubscribeResponseMessageType class]];

    [handler listProperty  : @"unsubscribeResponseMessage"
             useSelector   : @"addUnsubscribeResponseMessage"
             withNamespace : 'm'
             withXmlTag    : @"UnsubscribeResponseMessage"
             withHandler   : [MPSEWSResponseMessageType class]];

    [handler listProperty  : @"sendNotificationResponseMessage"
             useSelector   : @"addSendNotificationResponseMessage"
             withNamespace : 'm'
             withXmlTag    : @"SendNotificationResponseMessage"
             withHandler   : [MPSEWSSendNotificationResponseMessageType class]];

    [handler listProperty  : @"syncFolderHierarchyResponseMessage"
             useSelector   : @"addSyncFolderHierarchyResponseMessage"
             withNamespace : 'm'
             withXmlTag    : @"SyncFolderHierarchyResponseMessage"
             withHandler   : [MPSEWSSyncFolderHierarchyResponseMessageType class]];

    [handler listProperty  : @"syncFolderItemsResponseMessage"
             useSelector   : @"addSyncFolderItemsResponseMessage"
             withNamespace : 'm'
             withXmlTag    : @"SyncFolderItemsResponseMessage"
             withHandler   : [MPSEWSSyncFolderItemsResponseMessageType class]];

    [handler listProperty  : @"createManagedFolderResponseMessage"
             useSelector   : @"addCreateManagedFolderResponseMessage"
             withNamespace : 'm'
             withXmlTag    : @"CreateManagedFolderResponseMessage"
             withHandler   : [MPSEWSFolderInfoResponseMessageType class]];

    [handler listProperty  : @"convertIdResponseMessage"
             useSelector   : @"addConvertIdResponseMessage"
             withNamespace : 'm'
             withXmlTag    : @"ConvertIdResponseMessage"
             withHandler   : [MPSEWSConvertIdResponseMessageType class]];

    [handler listProperty  : @"getSharingMetadataResponseMessage"
             useSelector   : @"addGetSharingMetadataResponseMessage"
             withNamespace : 'm'
             withXmlTag    : @"GetSharingMetadataResponseMessage"
             withHandler   : [MPSEWSGetSharingMetadataResponseMessageType class]];

    [handler listProperty  : @"refreshSharingFolderResponseMessage"
             useSelector   : @"addRefreshSharingFolderResponseMessage"
             withNamespace : 'm'
             withXmlTag    : @"RefreshSharingFolderResponseMessage"
             withHandler   : [MPSEWSRefreshSharingFolderResponseMessageType class]];

    [handler listProperty  : @"getSharingFolderResponseMessage"
             useSelector   : @"addGetSharingFolderResponseMessage"
             withNamespace : 'm'
             withXmlTag    : @"GetSharingFolderResponseMessage"
             withHandler   : [MPSEWSGetSharingFolderResponseMessageType class]];

    [handler listProperty  : @"createUserConfigurationResponseMessage"
             useSelector   : @"addCreateUserConfigurationResponseMessage"
             withNamespace : 'm'
             withXmlTag    : @"CreateUserConfigurationResponseMessage"
             withHandler   : [MPSEWSResponseMessageType class]];

    [handler listProperty  : @"deleteUserConfigurationResponseMessage"
             useSelector   : @"addDeleteUserConfigurationResponseMessage"
             withNamespace : 'm'
             withXmlTag    : @"DeleteUserConfigurationResponseMessage"
             withHandler   : [MPSEWSResponseMessageType class]];

    [handler listProperty  : @"getUserConfigurationResponseMessage"
             useSelector   : @"addGetUserConfigurationResponseMessage"
             withNamespace : 'm'
             withXmlTag    : @"GetUserConfigurationResponseMessage"
             withHandler   : [MPSEWSGetUserConfigurationResponseMessageType class]];

    [handler listProperty  : @"updateUserConfigurationResponseMessage"
             useSelector   : @"addUpdateUserConfigurationResponseMessage"
             withNamespace : 'm'
             withXmlTag    : @"UpdateUserConfigurationResponseMessage"
             withHandler   : [MPSEWSResponseMessageType class]];

    [handler listProperty  : @"getRoomListsResponse"
             useSelector   : @"addGetRoomListsResponse"
             withNamespace : 'm'
             withXmlTag    : @"GetRoomListsResponse"
             withHandler   : [MPSEWSGetRoomListsResponseMessageType class]];

    [handler listProperty  : @"getRoomsResponse"
             useSelector   : @"addGetRoomsResponse"
             withNamespace : 'm'
             withXmlTag    : @"GetRoomsResponse"
             withHandler   : [MPSEWSGetRoomsResponseMessageType class]];

    [handler listProperty  : @"applyConversationActionResponseMessage"
             useSelector   : @"addApplyConversationActionResponseMessage"
             withNamespace : 'm'
             withXmlTag    : @"ApplyConversationActionResponseMessage"
             withHandler   : [MPSEWSResponseMessageType class]];

    [handler listProperty  : @"findMailboxStatisticsByKeywordsResponseMessage"
             useSelector   : @"addFindMailboxStatisticsByKeywordsResponseMessage"
             withNamespace : 'm'
             withXmlTag    : @"FindMailboxStatisticsByKeywordsResponseMessage"
             withHandler   : [MPSEWSFindMailboxStatisticsByKeywordsResponseMessageType class]];

    [handler listProperty  : @"getPasswordExpirationDateResponse"
             useSelector   : @"addGetPasswordExpirationDateResponse"
             withNamespace : 'm'
             withXmlTag    : @"GetPasswordExpirationDateResponse"
             withHandler   : [MPSEWSGetPasswordExpirationDateResponseMessageType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSArrayOfResponseMessagesType*) val
{   (void) val;
    if ([val createItemResponseMessage]) {
        for (MPSEWSItemInfoResponseMessageType* obj in [val createItemResponseMessage]) {
            if (![MPSEWSItemInfoResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val deleteItemResponseMessage]) {
        for (MPSEWSResponseMessageType* obj in [val deleteItemResponseMessage]) {
            if (![MPSEWSResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val getItemResponseMessage]) {
        for (MPSEWSItemInfoResponseMessageType* obj in [val getItemResponseMessage]) {
            if (![MPSEWSItemInfoResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val updateItemResponseMessage]) {
        for (MPSEWSUpdateItemResponseMessageType* obj in [val updateItemResponseMessage]) {
            if (![MPSEWSUpdateItemResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val sendItemResponseMessage]) {
        for (MPSEWSResponseMessageType* obj in [val sendItemResponseMessage]) {
            if (![MPSEWSResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val deleteFolderResponseMessage]) {
        for (MPSEWSResponseMessageType* obj in [val deleteFolderResponseMessage]) {
            if (![MPSEWSResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val emptyFolderResponseMessage]) {
        for (MPSEWSResponseMessageType* obj in [val emptyFolderResponseMessage]) {
            if (![MPSEWSResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val createFolderResponseMessage]) {
        for (MPSEWSFolderInfoResponseMessageType* obj in [val createFolderResponseMessage]) {
            if (![MPSEWSFolderInfoResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val getFolderResponseMessage]) {
        for (MPSEWSFolderInfoResponseMessageType* obj in [val getFolderResponseMessage]) {
            if (![MPSEWSFolderInfoResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val findFolderResponseMessage]) {
        for (MPSEWSFindFolderResponseMessageType* obj in [val findFolderResponseMessage]) {
            if (![MPSEWSFindFolderResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val updateFolderResponseMessage]) {
        for (MPSEWSFolderInfoResponseMessageType* obj in [val updateFolderResponseMessage]) {
            if (![MPSEWSFolderInfoResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val moveFolderResponseMessage]) {
        for (MPSEWSFolderInfoResponseMessageType* obj in [val moveFolderResponseMessage]) {
            if (![MPSEWSFolderInfoResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val pCopyFolderResponseMessage]) {
        for (MPSEWSFolderInfoResponseMessageType* obj in [val pCopyFolderResponseMessage]) {
            if (![MPSEWSFolderInfoResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val createAttachmentResponseMessage]) {
        for (MPSEWSAttachmentInfoResponseMessageType* obj in [val createAttachmentResponseMessage]) {
            if (![MPSEWSAttachmentInfoResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val deleteAttachmentResponseMessage]) {
        for (MPSEWSDeleteAttachmentResponseMessageType* obj in [val deleteAttachmentResponseMessage]) {
            if (![MPSEWSDeleteAttachmentResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val getAttachmentResponseMessage]) {
        for (MPSEWSAttachmentInfoResponseMessageType* obj in [val getAttachmentResponseMessage]) {
            if (![MPSEWSAttachmentInfoResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val uploadItemsResponseMessage]) {
        for (MPSEWSUploadItemsResponseMessageType* obj in [val uploadItemsResponseMessage]) {
            if (![MPSEWSUploadItemsResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val exportItemsResponseMessage]) {
        for (MPSEWSExportItemsResponseMessageType* obj in [val exportItemsResponseMessage]) {
            if (![MPSEWSExportItemsResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val findItemResponseMessage]) {
        for (MPSEWSFindItemResponseMessageType* obj in [val findItemResponseMessage]) {
            if (![MPSEWSFindItemResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val moveItemResponseMessage]) {
        for (MPSEWSItemInfoResponseMessageType* obj in [val moveItemResponseMessage]) {
            if (![MPSEWSItemInfoResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val pCopyItemResponseMessage]) {
        for (MPSEWSItemInfoResponseMessageType* obj in [val pCopyItemResponseMessage]) {
            if (![MPSEWSItemInfoResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val resolveNamesResponseMessage]) {
        for (MPSEWSResolveNamesResponseMessageType* obj in [val resolveNamesResponseMessage]) {
            if (![MPSEWSResolveNamesResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val expandDLResponseMessage]) {
        for (MPSEWSExpandDLResponseMessageType* obj in [val expandDLResponseMessage]) {
            if (![MPSEWSExpandDLResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val getServerTimeZonesResponseMessage]) {
        for (MPSEWSGetServerTimeZonesResponseMessageType* obj in [val getServerTimeZonesResponseMessage]) {
            if (![MPSEWSGetServerTimeZonesResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val getEventsResponseMessage]) {
        for (MPSEWSGetEventsResponseMessageType* obj in [val getEventsResponseMessage]) {
            if (![MPSEWSGetEventsResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val getStreamingEventsResponseMessage]) {
        for (MPSEWSGetStreamingEventsResponseMessageType* obj in [val getStreamingEventsResponseMessage]) {
            if (![MPSEWSGetStreamingEventsResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val subscribeResponseMessage]) {
        for (MPSEWSSubscribeResponseMessageType* obj in [val subscribeResponseMessage]) {
            if (![MPSEWSSubscribeResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val unsubscribeResponseMessage]) {
        for (MPSEWSResponseMessageType* obj in [val unsubscribeResponseMessage]) {
            if (![MPSEWSResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val sendNotificationResponseMessage]) {
        for (MPSEWSSendNotificationResponseMessageType* obj in [val sendNotificationResponseMessage]) {
            if (![MPSEWSSendNotificationResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val syncFolderHierarchyResponseMessage]) {
        for (MPSEWSSyncFolderHierarchyResponseMessageType* obj in [val syncFolderHierarchyResponseMessage]) {
            if (![MPSEWSSyncFolderHierarchyResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val syncFolderItemsResponseMessage]) {
        for (MPSEWSSyncFolderItemsResponseMessageType* obj in [val syncFolderItemsResponseMessage]) {
            if (![MPSEWSSyncFolderItemsResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val createManagedFolderResponseMessage]) {
        for (MPSEWSFolderInfoResponseMessageType* obj in [val createManagedFolderResponseMessage]) {
            if (![MPSEWSFolderInfoResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val convertIdResponseMessage]) {
        for (MPSEWSConvertIdResponseMessageType* obj in [val convertIdResponseMessage]) {
            if (![MPSEWSConvertIdResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val getSharingMetadataResponseMessage]) {
        for (MPSEWSGetSharingMetadataResponseMessageType* obj in [val getSharingMetadataResponseMessage]) {
            if (![MPSEWSGetSharingMetadataResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val refreshSharingFolderResponseMessage]) {
        for (MPSEWSRefreshSharingFolderResponseMessageType* obj in [val refreshSharingFolderResponseMessage]) {
            if (![MPSEWSRefreshSharingFolderResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val getSharingFolderResponseMessage]) {
        for (MPSEWSGetSharingFolderResponseMessageType* obj in [val getSharingFolderResponseMessage]) {
            if (![MPSEWSGetSharingFolderResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val createUserConfigurationResponseMessage]) {
        for (MPSEWSResponseMessageType* obj in [val createUserConfigurationResponseMessage]) {
            if (![MPSEWSResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val deleteUserConfigurationResponseMessage]) {
        for (MPSEWSResponseMessageType* obj in [val deleteUserConfigurationResponseMessage]) {
            if (![MPSEWSResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val getUserConfigurationResponseMessage]) {
        for (MPSEWSGetUserConfigurationResponseMessageType* obj in [val getUserConfigurationResponseMessage]) {
            if (![MPSEWSGetUserConfigurationResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val updateUserConfigurationResponseMessage]) {
        for (MPSEWSResponseMessageType* obj in [val updateUserConfigurationResponseMessage]) {
            if (![MPSEWSResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val getRoomListsResponse]) {
        for (MPSEWSGetRoomListsResponseMessageType* obj in [val getRoomListsResponse]) {
            if (![MPSEWSGetRoomListsResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val getRoomsResponse]) {
        for (MPSEWSGetRoomsResponseMessageType* obj in [val getRoomsResponse]) {
            if (![MPSEWSGetRoomsResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val applyConversationActionResponseMessage]) {
        for (MPSEWSResponseMessageType* obj in [val applyConversationActionResponseMessage]) {
            if (![MPSEWSResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val findMailboxStatisticsByKeywordsResponseMessage]) {
        for (MPSEWSFindMailboxStatisticsByKeywordsResponseMessageType* obj in [val findMailboxStatisticsByKeywordsResponseMessage]) {
            if (![MPSEWSFindMailboxStatisticsByKeywordsResponseMessageType isValid:obj]) return FALSE;
        }
    }
    if ([val getPasswordExpirationDateResponse]) {
        for (MPSEWSGetPasswordExpirationDateResponseMessageType* obj in [val getPasswordExpirationDateResponse]) {
            if (![MPSEWSGetPasswordExpirationDateResponseMessageType isValid:obj]) return FALSE;
        }
    }
    return TRUE;
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
    return [NSString stringWithFormat:@"ArrayOfResponseMessagesType: CreateItemResponseMessage=%@ DeleteItemResponseMessage=%@ GetItemResponseMessage=%@ UpdateItemResponseMessage=%@ SendItemResponseMessage=%@ DeleteFolderResponseMessage=%@ EmptyFolderResponseMessage=%@ CreateFolderResponseMessage=%@ GetFolderResponseMessage=%@ FindFolderResponseMessage=%@ UpdateFolderResponseMessage=%@ MoveFolderResponseMessage=%@ CopyFolderResponseMessage=%@ CreateAttachmentResponseMessage=%@ DeleteAttachmentResponseMessage=%@ GetAttachmentResponseMessage=%@ UploadItemsResponseMessage=%@ ExportItemsResponseMessage=%@ FindItemResponseMessage=%@ MoveItemResponseMessage=%@ CopyItemResponseMessage=%@ ResolveNamesResponseMessage=%@ ExpandDLResponseMessage=%@ GetServerTimeZonesResponseMessage=%@ GetEventsResponseMessage=%@ GetStreamingEventsResponseMessage=%@ SubscribeResponseMessage=%@ UnsubscribeResponseMessage=%@ SendNotificationResponseMessage=%@ SyncFolderHierarchyResponseMessage=%@ SyncFolderItemsResponseMessage=%@ CreateManagedFolderResponseMessage=%@ ConvertIdResponseMessage=%@ GetSharingMetadataResponseMessage=%@ RefreshSharingFolderResponseMessage=%@ GetSharingFolderResponseMessage=%@ CreateUserConfigurationResponseMessage=%@ DeleteUserConfigurationResponseMessage=%@ GetUserConfigurationResponseMessage=%@ UpdateUserConfigurationResponseMessage=%@ GetRoomListsResponse=%@ GetRoomsResponse=%@ ApplyConversationActionResponseMessage=%@ FindMailboxStatisticsByKeywordsResponseMessage=%@ GetPasswordExpirationDateResponse=%@", _createItemResponseMessage, _deleteItemResponseMessage, _getItemResponseMessage, _updateItemResponseMessage, _sendItemResponseMessage, _deleteFolderResponseMessage, _emptyFolderResponseMessage, _createFolderResponseMessage, _getFolderResponseMessage, _findFolderResponseMessage, _updateFolderResponseMessage, _moveFolderResponseMessage, _pCopyFolderResponseMessage, _createAttachmentResponseMessage, _deleteAttachmentResponseMessage, _getAttachmentResponseMessage, _uploadItemsResponseMessage, _exportItemsResponseMessage, _findItemResponseMessage, _moveItemResponseMessage, _pCopyItemResponseMessage, _resolveNamesResponseMessage, _expandDLResponseMessage, _getServerTimeZonesResponseMessage, _getEventsResponseMessage, _getStreamingEventsResponseMessage, _subscribeResponseMessage, _unsubscribeResponseMessage, _sendNotificationResponseMessage, _syncFolderHierarchyResponseMessage, _syncFolderItemsResponseMessage, _createManagedFolderResponseMessage, _convertIdResponseMessage, _getSharingMetadataResponseMessage, _refreshSharingFolderResponseMessage, _getSharingFolderResponseMessage, _createUserConfigurationResponseMessage, _deleteUserConfigurationResponseMessage, _getUserConfigurationResponseMessage, _updateUserConfigurationResponseMessage, _getRoomListsResponse, _getRoomsResponse, _applyConversationActionResponseMessage, _findMailboxStatisticsByKeywordsResponseMessage, _getPasswordExpirationDateResponse];
}

- (void) addCreateItemResponseMessage:(MPSEWSItemInfoResponseMessageType*) elem
{
    if (![self createItemResponseMessage]) {
        [self setCreateItemResponseMessage:[[NSMutableArray<MPSEWSItemInfoResponseMessageType*> alloc] init]];
    }
    [_createItemResponseMessage addObject:elem];
}

- (void) addDeleteItemResponseMessage:(MPSEWSResponseMessageType*) elem
{
    if (![self deleteItemResponseMessage]) {
        [self setDeleteItemResponseMessage:[[NSMutableArray<MPSEWSResponseMessageType*> alloc] init]];
    }
    [_deleteItemResponseMessage addObject:elem];
}

- (void) addGetItemResponseMessage:(MPSEWSItemInfoResponseMessageType*) elem
{
    if (![self getItemResponseMessage]) {
        [self setGetItemResponseMessage:[[NSMutableArray<MPSEWSItemInfoResponseMessageType*> alloc] init]];
    }
    [_getItemResponseMessage addObject:elem];
}

- (void) addUpdateItemResponseMessage:(MPSEWSUpdateItemResponseMessageType*) elem
{
    if (![self updateItemResponseMessage]) {
        [self setUpdateItemResponseMessage:[[NSMutableArray<MPSEWSUpdateItemResponseMessageType*> alloc] init]];
    }
    [_updateItemResponseMessage addObject:elem];
}

- (void) addSendItemResponseMessage:(MPSEWSResponseMessageType*) elem
{
    if (![self sendItemResponseMessage]) {
        [self setSendItemResponseMessage:[[NSMutableArray<MPSEWSResponseMessageType*> alloc] init]];
    }
    [_sendItemResponseMessage addObject:elem];
}

- (void) addDeleteFolderResponseMessage:(MPSEWSResponseMessageType*) elem
{
    if (![self deleteFolderResponseMessage]) {
        [self setDeleteFolderResponseMessage:[[NSMutableArray<MPSEWSResponseMessageType*> alloc] init]];
    }
    [_deleteFolderResponseMessage addObject:elem];
}

- (void) addEmptyFolderResponseMessage:(MPSEWSResponseMessageType*) elem
{
    if (![self emptyFolderResponseMessage]) {
        [self setEmptyFolderResponseMessage:[[NSMutableArray<MPSEWSResponseMessageType*> alloc] init]];
    }
    [_emptyFolderResponseMessage addObject:elem];
}

- (void) addCreateFolderResponseMessage:(MPSEWSFolderInfoResponseMessageType*) elem
{
    if (![self createFolderResponseMessage]) {
        [self setCreateFolderResponseMessage:[[NSMutableArray<MPSEWSFolderInfoResponseMessageType*> alloc] init]];
    }
    [_createFolderResponseMessage addObject:elem];
}

- (void) addGetFolderResponseMessage:(MPSEWSFolderInfoResponseMessageType*) elem
{
    if (![self getFolderResponseMessage]) {
        [self setGetFolderResponseMessage:[[NSMutableArray<MPSEWSFolderInfoResponseMessageType*> alloc] init]];
    }
    [_getFolderResponseMessage addObject:elem];
}

- (void) addFindFolderResponseMessage:(MPSEWSFindFolderResponseMessageType*) elem
{
    if (![self findFolderResponseMessage]) {
        [self setFindFolderResponseMessage:[[NSMutableArray<MPSEWSFindFolderResponseMessageType*> alloc] init]];
    }
    [_findFolderResponseMessage addObject:elem];
}

- (void) addUpdateFolderResponseMessage:(MPSEWSFolderInfoResponseMessageType*) elem
{
    if (![self updateFolderResponseMessage]) {
        [self setUpdateFolderResponseMessage:[[NSMutableArray<MPSEWSFolderInfoResponseMessageType*> alloc] init]];
    }
    [_updateFolderResponseMessage addObject:elem];
}

- (void) addMoveFolderResponseMessage:(MPSEWSFolderInfoResponseMessageType*) elem
{
    if (![self moveFolderResponseMessage]) {
        [self setMoveFolderResponseMessage:[[NSMutableArray<MPSEWSFolderInfoResponseMessageType*> alloc] init]];
    }
    [_moveFolderResponseMessage addObject:elem];
}

- (void) addCopyFolderResponseMessage:(MPSEWSFolderInfoResponseMessageType*) elem
{
    if (![self pCopyFolderResponseMessage]) {
        [self setPCopyFolderResponseMessage:[[NSMutableArray<MPSEWSFolderInfoResponseMessageType*> alloc] init]];
    }
    [_pCopyFolderResponseMessage addObject:elem];
}

- (void) addCreateAttachmentResponseMessage:(MPSEWSAttachmentInfoResponseMessageType*) elem
{
    if (![self createAttachmentResponseMessage]) {
        [self setCreateAttachmentResponseMessage:[[NSMutableArray<MPSEWSAttachmentInfoResponseMessageType*> alloc] init]];
    }
    [_createAttachmentResponseMessage addObject:elem];
}

- (void) addDeleteAttachmentResponseMessage:(MPSEWSDeleteAttachmentResponseMessageType*) elem
{
    if (![self deleteAttachmentResponseMessage]) {
        [self setDeleteAttachmentResponseMessage:[[NSMutableArray<MPSEWSDeleteAttachmentResponseMessageType*> alloc] init]];
    }
    [_deleteAttachmentResponseMessage addObject:elem];
}

- (void) addGetAttachmentResponseMessage:(MPSEWSAttachmentInfoResponseMessageType*) elem
{
    if (![self getAttachmentResponseMessage]) {
        [self setGetAttachmentResponseMessage:[[NSMutableArray<MPSEWSAttachmentInfoResponseMessageType*> alloc] init]];
    }
    [_getAttachmentResponseMessage addObject:elem];
}

- (void) addUploadItemsResponseMessage:(MPSEWSUploadItemsResponseMessageType*) elem
{
    if (![self uploadItemsResponseMessage]) {
        [self setUploadItemsResponseMessage:[[NSMutableArray<MPSEWSUploadItemsResponseMessageType*> alloc] init]];
    }
    [_uploadItemsResponseMessage addObject:elem];
}

- (void) addExportItemsResponseMessage:(MPSEWSExportItemsResponseMessageType*) elem
{
    if (![self exportItemsResponseMessage]) {
        [self setExportItemsResponseMessage:[[NSMutableArray<MPSEWSExportItemsResponseMessageType*> alloc] init]];
    }
    [_exportItemsResponseMessage addObject:elem];
}

- (void) addFindItemResponseMessage:(MPSEWSFindItemResponseMessageType*) elem
{
    if (![self findItemResponseMessage]) {
        [self setFindItemResponseMessage:[[NSMutableArray<MPSEWSFindItemResponseMessageType*> alloc] init]];
    }
    [_findItemResponseMessage addObject:elem];
}

- (void) addMoveItemResponseMessage:(MPSEWSItemInfoResponseMessageType*) elem
{
    if (![self moveItemResponseMessage]) {
        [self setMoveItemResponseMessage:[[NSMutableArray<MPSEWSItemInfoResponseMessageType*> alloc] init]];
    }
    [_moveItemResponseMessage addObject:elem];
}

- (void) addCopyItemResponseMessage:(MPSEWSItemInfoResponseMessageType*) elem
{
    if (![self pCopyItemResponseMessage]) {
        [self setPCopyItemResponseMessage:[[NSMutableArray<MPSEWSItemInfoResponseMessageType*> alloc] init]];
    }
    [_pCopyItemResponseMessage addObject:elem];
}

- (void) addResolveNamesResponseMessage:(MPSEWSResolveNamesResponseMessageType*) elem
{
    if (![self resolveNamesResponseMessage]) {
        [self setResolveNamesResponseMessage:[[NSMutableArray<MPSEWSResolveNamesResponseMessageType*> alloc] init]];
    }
    [_resolveNamesResponseMessage addObject:elem];
}

- (void) addExpandDLResponseMessage:(MPSEWSExpandDLResponseMessageType*) elem
{
    if (![self expandDLResponseMessage]) {
        [self setExpandDLResponseMessage:[[NSMutableArray<MPSEWSExpandDLResponseMessageType*> alloc] init]];
    }
    [_expandDLResponseMessage addObject:elem];
}

- (void) addGetServerTimeZonesResponseMessage:(MPSEWSGetServerTimeZonesResponseMessageType*) elem
{
    if (![self getServerTimeZonesResponseMessage]) {
        [self setGetServerTimeZonesResponseMessage:[[NSMutableArray<MPSEWSGetServerTimeZonesResponseMessageType*> alloc] init]];
    }
    [_getServerTimeZonesResponseMessage addObject:elem];
}

- (void) addGetEventsResponseMessage:(MPSEWSGetEventsResponseMessageType*) elem
{
    if (![self getEventsResponseMessage]) {
        [self setGetEventsResponseMessage:[[NSMutableArray<MPSEWSGetEventsResponseMessageType*> alloc] init]];
    }
    [_getEventsResponseMessage addObject:elem];
}

- (void) addGetStreamingEventsResponseMessage:(MPSEWSGetStreamingEventsResponseMessageType*) elem
{
    if (![self getStreamingEventsResponseMessage]) {
        [self setGetStreamingEventsResponseMessage:[[NSMutableArray<MPSEWSGetStreamingEventsResponseMessageType*> alloc] init]];
    }
    [_getStreamingEventsResponseMessage addObject:elem];
}

- (void) addSubscribeResponseMessage:(MPSEWSSubscribeResponseMessageType*) elem
{
    if (![self subscribeResponseMessage]) {
        [self setSubscribeResponseMessage:[[NSMutableArray<MPSEWSSubscribeResponseMessageType*> alloc] init]];
    }
    [_subscribeResponseMessage addObject:elem];
}

- (void) addUnsubscribeResponseMessage:(MPSEWSResponseMessageType*) elem
{
    if (![self unsubscribeResponseMessage]) {
        [self setUnsubscribeResponseMessage:[[NSMutableArray<MPSEWSResponseMessageType*> alloc] init]];
    }
    [_unsubscribeResponseMessage addObject:elem];
}

- (void) addSendNotificationResponseMessage:(MPSEWSSendNotificationResponseMessageType*) elem
{
    if (![self sendNotificationResponseMessage]) {
        [self setSendNotificationResponseMessage:[[NSMutableArray<MPSEWSSendNotificationResponseMessageType*> alloc] init]];
    }
    [_sendNotificationResponseMessage addObject:elem];
}

- (void) addSyncFolderHierarchyResponseMessage:(MPSEWSSyncFolderHierarchyResponseMessageType*) elem
{
    if (![self syncFolderHierarchyResponseMessage]) {
        [self setSyncFolderHierarchyResponseMessage:[[NSMutableArray<MPSEWSSyncFolderHierarchyResponseMessageType*> alloc] init]];
    }
    [_syncFolderHierarchyResponseMessage addObject:elem];
}

- (void) addSyncFolderItemsResponseMessage:(MPSEWSSyncFolderItemsResponseMessageType*) elem
{
    if (![self syncFolderItemsResponseMessage]) {
        [self setSyncFolderItemsResponseMessage:[[NSMutableArray<MPSEWSSyncFolderItemsResponseMessageType*> alloc] init]];
    }
    [_syncFolderItemsResponseMessage addObject:elem];
}

- (void) addCreateManagedFolderResponseMessage:(MPSEWSFolderInfoResponseMessageType*) elem
{
    if (![self createManagedFolderResponseMessage]) {
        [self setCreateManagedFolderResponseMessage:[[NSMutableArray<MPSEWSFolderInfoResponseMessageType*> alloc] init]];
    }
    [_createManagedFolderResponseMessage addObject:elem];
}

- (void) addConvertIdResponseMessage:(MPSEWSConvertIdResponseMessageType*) elem
{
    if (![self convertIdResponseMessage]) {
        [self setConvertIdResponseMessage:[[NSMutableArray<MPSEWSConvertIdResponseMessageType*> alloc] init]];
    }
    [_convertIdResponseMessage addObject:elem];
}

- (void) addGetSharingMetadataResponseMessage:(MPSEWSGetSharingMetadataResponseMessageType*) elem
{
    if (![self getSharingMetadataResponseMessage]) {
        [self setGetSharingMetadataResponseMessage:[[NSMutableArray<MPSEWSGetSharingMetadataResponseMessageType*> alloc] init]];
    }
    [_getSharingMetadataResponseMessage addObject:elem];
}

- (void) addRefreshSharingFolderResponseMessage:(MPSEWSRefreshSharingFolderResponseMessageType*) elem
{
    if (![self refreshSharingFolderResponseMessage]) {
        [self setRefreshSharingFolderResponseMessage:[[NSMutableArray<MPSEWSRefreshSharingFolderResponseMessageType*> alloc] init]];
    }
    [_refreshSharingFolderResponseMessage addObject:elem];
}

- (void) addGetSharingFolderResponseMessage:(MPSEWSGetSharingFolderResponseMessageType*) elem
{
    if (![self getSharingFolderResponseMessage]) {
        [self setGetSharingFolderResponseMessage:[[NSMutableArray<MPSEWSGetSharingFolderResponseMessageType*> alloc] init]];
    }
    [_getSharingFolderResponseMessage addObject:elem];
}

- (void) addCreateUserConfigurationResponseMessage:(MPSEWSResponseMessageType*) elem
{
    if (![self createUserConfigurationResponseMessage]) {
        [self setCreateUserConfigurationResponseMessage:[[NSMutableArray<MPSEWSResponseMessageType*> alloc] init]];
    }
    [_createUserConfigurationResponseMessage addObject:elem];
}

- (void) addDeleteUserConfigurationResponseMessage:(MPSEWSResponseMessageType*) elem
{
    if (![self deleteUserConfigurationResponseMessage]) {
        [self setDeleteUserConfigurationResponseMessage:[[NSMutableArray<MPSEWSResponseMessageType*> alloc] init]];
    }
    [_deleteUserConfigurationResponseMessage addObject:elem];
}

- (void) addGetUserConfigurationResponseMessage:(MPSEWSGetUserConfigurationResponseMessageType*) elem
{
    if (![self getUserConfigurationResponseMessage]) {
        [self setGetUserConfigurationResponseMessage:[[NSMutableArray<MPSEWSGetUserConfigurationResponseMessageType*> alloc] init]];
    }
    [_getUserConfigurationResponseMessage addObject:elem];
}

- (void) addUpdateUserConfigurationResponseMessage:(MPSEWSResponseMessageType*) elem
{
    if (![self updateUserConfigurationResponseMessage]) {
        [self setUpdateUserConfigurationResponseMessage:[[NSMutableArray<MPSEWSResponseMessageType*> alloc] init]];
    }
    [_updateUserConfigurationResponseMessage addObject:elem];
}

- (void) addGetRoomListsResponse:(MPSEWSGetRoomListsResponseMessageType*) elem
{
    if (![self getRoomListsResponse]) {
        [self setGetRoomListsResponse:[[NSMutableArray<MPSEWSGetRoomListsResponseMessageType*> alloc] init]];
    }
    [_getRoomListsResponse addObject:elem];
}

- (void) addGetRoomsResponse:(MPSEWSGetRoomsResponseMessageType*) elem
{
    if (![self getRoomsResponse]) {
        [self setGetRoomsResponse:[[NSMutableArray<MPSEWSGetRoomsResponseMessageType*> alloc] init]];
    }
    [_getRoomsResponse addObject:elem];
}

- (void) addApplyConversationActionResponseMessage:(MPSEWSResponseMessageType*) elem
{
    if (![self applyConversationActionResponseMessage]) {
        [self setApplyConversationActionResponseMessage:[[NSMutableArray<MPSEWSResponseMessageType*> alloc] init]];
    }
    [_applyConversationActionResponseMessage addObject:elem];
}

- (void) addFindMailboxStatisticsByKeywordsResponseMessage:(MPSEWSFindMailboxStatisticsByKeywordsResponseMessageType*) elem
{
    if (![self findMailboxStatisticsByKeywordsResponseMessage]) {
        [self setFindMailboxStatisticsByKeywordsResponseMessage:[[NSMutableArray<MPSEWSFindMailboxStatisticsByKeywordsResponseMessageType*> alloc] init]];
    }
    [_findMailboxStatisticsByKeywordsResponseMessage addObject:elem];
}

- (void) addGetPasswordExpirationDateResponse:(MPSEWSGetPasswordExpirationDateResponseMessageType*) elem
{
    if (![self getPasswordExpirationDateResponse]) {
        [self setGetPasswordExpirationDateResponse:[[NSMutableArray<MPSEWSGetPasswordExpirationDateResponseMessageType*> alloc] init]];
    }
    [_getPasswordExpirationDateResponse addObject:elem];
}

@end

