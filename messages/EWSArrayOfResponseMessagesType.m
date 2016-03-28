#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSArrayOfResponseMessagesType.h"
#import "../messages/EWSAttachmentInfoResponseMessageType.h"
#import "../messages/EWSConvertIdResponseMessageType.h"
#import "../messages/EWSDeleteAttachmentResponseMessageType.h"
#import "../messages/EWSExpandDLResponseMessageType.h"
#import "../messages/EWSFindFolderResponseMessageType.h"
#import "../messages/EWSFindItemResponseMessageType.h"
#import "../messages/EWSFolderInfoResponseMessageType.h"
#import "../messages/EWSGetEventsResponseMessageType.h"
#import "../messages/EWSItemInfoResponseMessageType.h"
#import "../messages/EWSResolveNamesResponseMessageType.h"
#import "../messages/EWSResponseMessageType.h"
#import "../messages/EWSSendNotificationResponseMessageType.h"
#import "../messages/EWSSubscribeResponseMessageType.h"
#import "../messages/EWSSyncFolderHierarchyResponseMessageType.h"
#import "../messages/EWSSyncFolderItemsResponseMessageType.h"
#import "../messages/EWSUpdateItemResponseMessageType.h"


@implementation EWSArrayOfResponseMessagesType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSArrayOfResponseMessagesType class]];

    [handler property      : @"createItemResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"CreateItemResponseMessage"
             withHandler   : [EWSItemInfoResponseMessageType class]];

    [handler property      : @"deleteItemResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"DeleteItemResponseMessage"
             withHandler   : [EWSResponseMessageType class]];

    [handler property      : @"getItemResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"GetItemResponseMessage"
             withHandler   : [EWSItemInfoResponseMessageType class]];

    [handler property      : @"updateItemResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"UpdateItemResponseMessage"
             withHandler   : [EWSUpdateItemResponseMessageType class]];

    [handler property      : @"sendItemResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"SendItemResponseMessage"
             withHandler   : [EWSResponseMessageType class]];

    [handler property      : @"deleteFolderResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"DeleteFolderResponseMessage"
             withHandler   : [EWSResponseMessageType class]];

    [handler property      : @"createFolderResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"CreateFolderResponseMessage"
             withHandler   : [EWSFolderInfoResponseMessageType class]];

    [handler property      : @"getFolderResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"GetFolderResponseMessage"
             withHandler   : [EWSFolderInfoResponseMessageType class]];

    [handler property      : @"findFolderResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"FindFolderResponseMessage"
             withHandler   : [EWSFindFolderResponseMessageType class]];

    [handler property      : @"updateFolderResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"UpdateFolderResponseMessage"
             withHandler   : [EWSFolderInfoResponseMessageType class]];

    [handler property      : @"moveFolderResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"MoveFolderResponseMessage"
             withHandler   : [EWSFolderInfoResponseMessageType class]];

    [handler property      : @"pCopyFolderResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"CopyFolderResponseMessage"
             withHandler   : [EWSFolderInfoResponseMessageType class]];

    [handler property      : @"createAttachmentResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"CreateAttachmentResponseMessage"
             withHandler   : [EWSAttachmentInfoResponseMessageType class]];

    [handler property      : @"deleteAttachmentResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"DeleteAttachmentResponseMessage"
             withHandler   : [EWSDeleteAttachmentResponseMessageType class]];

    [handler property      : @"getAttachmentResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"GetAttachmentResponseMessage"
             withHandler   : [EWSAttachmentInfoResponseMessageType class]];

    [handler property      : @"findItemResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"FindItemResponseMessage"
             withHandler   : [EWSFindItemResponseMessageType class]];

    [handler property      : @"moveItemResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"MoveItemResponseMessage"
             withHandler   : [EWSItemInfoResponseMessageType class]];

    [handler property      : @"pCopyItemResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"CopyItemResponseMessage"
             withHandler   : [EWSItemInfoResponseMessageType class]];

    [handler property      : @"resolveNamesResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"ResolveNamesResponseMessage"
             withHandler   : [EWSResolveNamesResponseMessageType class]];

    [handler property      : @"expandDLResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"ExpandDLResponseMessage"
             withHandler   : [EWSExpandDLResponseMessageType class]];

    [handler property      : @"getEventsResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"GetEventsResponseMessage"
             withHandler   : [EWSGetEventsResponseMessageType class]];

    [handler property      : @"subscribeResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"SubscribeResponseMessage"
             withHandler   : [EWSSubscribeResponseMessageType class]];

    [handler property      : @"unsubscribeResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"UnsubscribeResponseMessage"
             withHandler   : [EWSResponseMessageType class]];

    [handler property      : @"sendNotificationResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"SendNotificationResponseMessage"
             withHandler   : [EWSSendNotificationResponseMessageType class]];

    [handler property      : @"syncFolderHierarchyResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"SyncFolderHierarchyResponseMessage"
             withHandler   : [EWSSyncFolderHierarchyResponseMessageType class]];

    [handler property      : @"syncFolderItemsResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"SyncFolderItemsResponseMessage"
             withHandler   : [EWSSyncFolderItemsResponseMessageType class]];

    [handler property      : @"createManagedFolderResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"CreateManagedFolderResponseMessage"
             withHandler   : [EWSFolderInfoResponseMessageType class]];

    [handler property      : @"convertIdResponseMessage"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"ConvertIdResponseMessage"
             withHandler   : [EWSConvertIdResponseMessageType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSArrayOfResponseMessagesType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfResponseMessagesType: CreateItemResponseMessage=%@ DeleteItemResponseMessage=%@ GetItemResponseMessage=%@ UpdateItemResponseMessage=%@ SendItemResponseMessage=%@ DeleteFolderResponseMessage=%@ CreateFolderResponseMessage=%@ GetFolderResponseMessage=%@ FindFolderResponseMessage=%@ UpdateFolderResponseMessage=%@ MoveFolderResponseMessage=%@ CopyFolderResponseMessage=%@ CreateAttachmentResponseMessage=%@ DeleteAttachmentResponseMessage=%@ GetAttachmentResponseMessage=%@ FindItemResponseMessage=%@ MoveItemResponseMessage=%@ CopyItemResponseMessage=%@ ResolveNamesResponseMessage=%@ ExpandDLResponseMessage=%@ GetEventsResponseMessage=%@ SubscribeResponseMessage=%@ UnsubscribeResponseMessage=%@ SendNotificationResponseMessage=%@ SyncFolderHierarchyResponseMessage=%@ SyncFolderItemsResponseMessage=%@ CreateManagedFolderResponseMessage=%@ ConvertIdResponseMessage=%@", _createItemResponseMessage, _deleteItemResponseMessage, _getItemResponseMessage, _updateItemResponseMessage, _sendItemResponseMessage, _deleteFolderResponseMessage, _createFolderResponseMessage, _getFolderResponseMessage, _findFolderResponseMessage, _updateFolderResponseMessage, _moveFolderResponseMessage, _pCopyFolderResponseMessage, _createAttachmentResponseMessage, _deleteAttachmentResponseMessage, _getAttachmentResponseMessage, _findItemResponseMessage, _moveItemResponseMessage, _pCopyItemResponseMessage, _resolveNamesResponseMessage, _expandDLResponseMessage, _getEventsResponseMessage, _subscribeResponseMessage, _unsubscribeResponseMessage, _sendNotificationResponseMessage, _syncFolderHierarchyResponseMessage, _syncFolderItemsResponseMessage, _createManagedFolderResponseMessage, _convertIdResponseMessage];
}

@end

