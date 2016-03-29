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

    [handler listProperty  : @"getEventsResponseMessage"
             useSelector   : @"addGetEventsResponseMessage"
             withNamespace : 'm'
             withXmlTag    : @"GetEventsResponseMessage"
             withHandler   : [MPSEWSGetEventsResponseMessageType class]];

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

- (void) addGetEventsResponseMessage:(MPSEWSGetEventsResponseMessageType*) elem
{
    if (![self getEventsResponseMessage]) {
        [self setGetEventsResponseMessage:[[NSMutableArray<MPSEWSGetEventsResponseMessageType*> alloc] init]];
    }
    [_getEventsResponseMessage addObject:elem];
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

@end

