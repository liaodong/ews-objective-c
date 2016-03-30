#import <Foundation/Foundation.h>



@class MPSEWSAttachmentInfoResponseMessageType;
@class MPSEWSConvertIdResponseMessageType;
@class MPSEWSDeleteAttachmentResponseMessageType;
@class MPSEWSExpandDLResponseMessageType;
@class MPSEWSFindFolderResponseMessageType;
@class MPSEWSFindItemResponseMessageType;
@class MPSEWSFolderInfoResponseMessageType;
@class MPSEWSGetEventsResponseMessageType;
@class MPSEWSItemInfoResponseMessageType;
@class MPSEWSResolveNamesResponseMessageType;
@class MPSEWSResponseMessageType;
@class MPSEWSSendNotificationResponseMessageType;
@class MPSEWSSubscribeResponseMessageType;
@class MPSEWSSyncFolderHierarchyResponseMessageType;
@class MPSEWSSyncFolderItemsResponseMessageType;
@class MPSEWSUpdateItemResponseMessageType;



/* ArrayOfResponseMessagesType */
@interface MPSEWSArrayOfResponseMessagesType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfResponseMessagesType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSItemInfoResponseMessageType*>*            createItemResponseMessage;
@property (strong) NSMutableArray<MPSEWSResponseMessageType*>*                    deleteItemResponseMessage;
@property (strong) NSMutableArray<MPSEWSItemInfoResponseMessageType*>*            getItemResponseMessage;
@property (strong) NSMutableArray<MPSEWSUpdateItemResponseMessageType*>*          updateItemResponseMessage;
@property (strong) NSMutableArray<MPSEWSResponseMessageType*>*                    sendItemResponseMessage;
@property (strong) NSMutableArray<MPSEWSResponseMessageType*>*                    deleteFolderResponseMessage;
@property (strong) NSMutableArray<MPSEWSFolderInfoResponseMessageType*>*          createFolderResponseMessage;
@property (strong) NSMutableArray<MPSEWSFolderInfoResponseMessageType*>*          getFolderResponseMessage;
@property (strong) NSMutableArray<MPSEWSFindFolderResponseMessageType*>*          findFolderResponseMessage;
@property (strong) NSMutableArray<MPSEWSFolderInfoResponseMessageType*>*          updateFolderResponseMessage;
@property (strong) NSMutableArray<MPSEWSFolderInfoResponseMessageType*>*          moveFolderResponseMessage;
@property (strong) NSMutableArray<MPSEWSFolderInfoResponseMessageType*>*          pCopyFolderResponseMessage;
@property (strong) NSMutableArray<MPSEWSAttachmentInfoResponseMessageType*>*      createAttachmentResponseMessage;
@property (strong) NSMutableArray<MPSEWSDeleteAttachmentResponseMessageType*>*    deleteAttachmentResponseMessage;
@property (strong) NSMutableArray<MPSEWSAttachmentInfoResponseMessageType*>*      getAttachmentResponseMessage;
@property (strong) NSMutableArray<MPSEWSFindItemResponseMessageType*>*            findItemResponseMessage;
@property (strong) NSMutableArray<MPSEWSItemInfoResponseMessageType*>*            moveItemResponseMessage;
@property (strong) NSMutableArray<MPSEWSItemInfoResponseMessageType*>*            pCopyItemResponseMessage;
@property (strong) NSMutableArray<MPSEWSResolveNamesResponseMessageType*>*        resolveNamesResponseMessage;
@property (strong) NSMutableArray<MPSEWSExpandDLResponseMessageType*>*            expandDLResponseMessage;
@property (strong) NSMutableArray<MPSEWSGetEventsResponseMessageType*>*           getEventsResponseMessage;
@property (strong) NSMutableArray<MPSEWSSubscribeResponseMessageType*>*           subscribeResponseMessage;
@property (strong) NSMutableArray<MPSEWSResponseMessageType*>*                    unsubscribeResponseMessage;
@property (strong) NSMutableArray<MPSEWSSendNotificationResponseMessageType*>*    sendNotificationResponseMessage;
@property (strong) NSMutableArray<MPSEWSSyncFolderHierarchyResponseMessageType*>* syncFolderHierarchyResponseMessage;
@property (strong) NSMutableArray<MPSEWSSyncFolderItemsResponseMessageType*>*     syncFolderItemsResponseMessage;
@property (strong) NSMutableArray<MPSEWSFolderInfoResponseMessageType*>*          createManagedFolderResponseMessage;
@property (strong) NSMutableArray<MPSEWSConvertIdResponseMessageType*>*           convertIdResponseMessage;


- (void) addCreateItemResponseMessage:(MPSEWSItemInfoResponseMessageType*) elem;
- (void) addDeleteItemResponseMessage:(MPSEWSResponseMessageType*) elem;
- (void) addGetItemResponseMessage:(MPSEWSItemInfoResponseMessageType*) elem;
- (void) addUpdateItemResponseMessage:(MPSEWSUpdateItemResponseMessageType*) elem;
- (void) addSendItemResponseMessage:(MPSEWSResponseMessageType*) elem;
- (void) addDeleteFolderResponseMessage:(MPSEWSResponseMessageType*) elem;
- (void) addCreateFolderResponseMessage:(MPSEWSFolderInfoResponseMessageType*) elem;
- (void) addGetFolderResponseMessage:(MPSEWSFolderInfoResponseMessageType*) elem;
- (void) addFindFolderResponseMessage:(MPSEWSFindFolderResponseMessageType*) elem;
- (void) addUpdateFolderResponseMessage:(MPSEWSFolderInfoResponseMessageType*) elem;
- (void) addMoveFolderResponseMessage:(MPSEWSFolderInfoResponseMessageType*) elem;
- (void) addCopyFolderResponseMessage:(MPSEWSFolderInfoResponseMessageType*) elem;
- (void) addCreateAttachmentResponseMessage:(MPSEWSAttachmentInfoResponseMessageType*) elem;
- (void) addDeleteAttachmentResponseMessage:(MPSEWSDeleteAttachmentResponseMessageType*) elem;
- (void) addGetAttachmentResponseMessage:(MPSEWSAttachmentInfoResponseMessageType*) elem;
- (void) addFindItemResponseMessage:(MPSEWSFindItemResponseMessageType*) elem;
- (void) addMoveItemResponseMessage:(MPSEWSItemInfoResponseMessageType*) elem;
- (void) addCopyItemResponseMessage:(MPSEWSItemInfoResponseMessageType*) elem;
- (void) addResolveNamesResponseMessage:(MPSEWSResolveNamesResponseMessageType*) elem;
- (void) addExpandDLResponseMessage:(MPSEWSExpandDLResponseMessageType*) elem;
- (void) addGetEventsResponseMessage:(MPSEWSGetEventsResponseMessageType*) elem;
- (void) addSubscribeResponseMessage:(MPSEWSSubscribeResponseMessageType*) elem;
- (void) addUnsubscribeResponseMessage:(MPSEWSResponseMessageType*) elem;
- (void) addSendNotificationResponseMessage:(MPSEWSSendNotificationResponseMessageType*) elem;
- (void) addSyncFolderHierarchyResponseMessage:(MPSEWSSyncFolderHierarchyResponseMessageType*) elem;
- (void) addSyncFolderItemsResponseMessage:(MPSEWSSyncFolderItemsResponseMessageType*) elem;
- (void) addCreateManagedFolderResponseMessage:(MPSEWSFolderInfoResponseMessageType*) elem;
- (void) addConvertIdResponseMessage:(MPSEWSConvertIdResponseMessageType*) elem;
@end

