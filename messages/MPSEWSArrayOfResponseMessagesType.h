#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSAttachmentInfoResponseMessageType;
@class MPSEWSConvertIdResponseMessageType;
@class MPSEWSDeleteAttachmentResponseMessageType;
@class MPSEWSExpandDLResponseMessageType;
@class MPSEWSExportItemsResponseMessageType;
@class MPSEWSFindFolderResponseMessageType;
@class MPSEWSFindItemResponseMessageType;
@class MPSEWSFindMailboxStatisticsByKeywordsResponseMessageType;
@class MPSEWSFolderInfoResponseMessageType;
@class MPSEWSGetEventsResponseMessageType;
@class MPSEWSGetPasswordExpirationDateResponseMessageType;
@class MPSEWSGetRoomListsResponseMessageType;
@class MPSEWSGetRoomsResponseMessageType;
@class MPSEWSGetServerTimeZonesResponseMessageType;
@class MPSEWSGetSharingFolderResponseMessageType;
@class MPSEWSGetSharingMetadataResponseMessageType;
@class MPSEWSGetStreamingEventsResponseMessageType;
@class MPSEWSGetUserConfigurationResponseMessageType;
@class MPSEWSItemInfoResponseMessageType;
@class MPSEWSRefreshSharingFolderResponseMessageType;
@class MPSEWSResolveNamesResponseMessageType;
@class MPSEWSResponseMessageType;
@class MPSEWSSendNotificationResponseMessageType;
@class MPSEWSSubscribeResponseMessageType;
@class MPSEWSSyncFolderHierarchyResponseMessageType;
@class MPSEWSSyncFolderItemsResponseMessageType;
@class MPSEWSUpdateItemResponseMessageType;
@class MPSEWSUploadItemsResponseMessageType;



/* ArrayOfResponseMessagesType */
@interface MPSEWSArrayOfResponseMessagesType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfResponseMessagesType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSItemInfoResponseMessageType*>*                        createItemResponseMessage;
@property (strong) NSMutableArray<MPSEWSResponseMessageType*>*                                deleteItemResponseMessage;
@property (strong) NSMutableArray<MPSEWSItemInfoResponseMessageType*>*                        getItemResponseMessage;
@property (strong) NSMutableArray<MPSEWSUpdateItemResponseMessageType*>*                      updateItemResponseMessage;
@property (strong) NSMutableArray<MPSEWSResponseMessageType*>*                                sendItemResponseMessage;
@property (strong) NSMutableArray<MPSEWSResponseMessageType*>*                                deleteFolderResponseMessage;
@property (strong) NSMutableArray<MPSEWSResponseMessageType*>*                                emptyFolderResponseMessage;
@property (strong) NSMutableArray<MPSEWSFolderInfoResponseMessageType*>*                      createFolderResponseMessage;
@property (strong) NSMutableArray<MPSEWSFolderInfoResponseMessageType*>*                      getFolderResponseMessage;
@property (strong) NSMutableArray<MPSEWSFindFolderResponseMessageType*>*                      findFolderResponseMessage;
@property (strong) NSMutableArray<MPSEWSFolderInfoResponseMessageType*>*                      updateFolderResponseMessage;
@property (strong) NSMutableArray<MPSEWSFolderInfoResponseMessageType*>*                      moveFolderResponseMessage;
@property (strong) NSMutableArray<MPSEWSFolderInfoResponseMessageType*>*                      pCopyFolderResponseMessage;
@property (strong) NSMutableArray<MPSEWSAttachmentInfoResponseMessageType*>*                  createAttachmentResponseMessage;
@property (strong) NSMutableArray<MPSEWSDeleteAttachmentResponseMessageType*>*                deleteAttachmentResponseMessage;
@property (strong) NSMutableArray<MPSEWSAttachmentInfoResponseMessageType*>*                  getAttachmentResponseMessage;
@property (strong) NSMutableArray<MPSEWSUploadItemsResponseMessageType*>*                     uploadItemsResponseMessage;
@property (strong) NSMutableArray<MPSEWSExportItemsResponseMessageType*>*                     exportItemsResponseMessage;
@property (strong) NSMutableArray<MPSEWSFindItemResponseMessageType*>*                        findItemResponseMessage;
@property (strong) NSMutableArray<MPSEWSItemInfoResponseMessageType*>*                        moveItemResponseMessage;
@property (strong) NSMutableArray<MPSEWSItemInfoResponseMessageType*>*                        pCopyItemResponseMessage;
@property (strong) NSMutableArray<MPSEWSResolveNamesResponseMessageType*>*                    resolveNamesResponseMessage;
@property (strong) NSMutableArray<MPSEWSExpandDLResponseMessageType*>*                        expandDLResponseMessage;
@property (strong) NSMutableArray<MPSEWSGetServerTimeZonesResponseMessageType*>*              getServerTimeZonesResponseMessage;
@property (strong) NSMutableArray<MPSEWSGetEventsResponseMessageType*>*                       getEventsResponseMessage;
@property (strong) NSMutableArray<MPSEWSGetStreamingEventsResponseMessageType*>*              getStreamingEventsResponseMessage;
@property (strong) NSMutableArray<MPSEWSSubscribeResponseMessageType*>*                       subscribeResponseMessage;
@property (strong) NSMutableArray<MPSEWSResponseMessageType*>*                                unsubscribeResponseMessage;
@property (strong) NSMutableArray<MPSEWSSendNotificationResponseMessageType*>*                sendNotificationResponseMessage;
@property (strong) NSMutableArray<MPSEWSSyncFolderHierarchyResponseMessageType*>*             syncFolderHierarchyResponseMessage;
@property (strong) NSMutableArray<MPSEWSSyncFolderItemsResponseMessageType*>*                 syncFolderItemsResponseMessage;
@property (strong) NSMutableArray<MPSEWSFolderInfoResponseMessageType*>*                      createManagedFolderResponseMessage;
@property (strong) NSMutableArray<MPSEWSConvertIdResponseMessageType*>*                       convertIdResponseMessage;
@property (strong) NSMutableArray<MPSEWSGetSharingMetadataResponseMessageType*>*              getSharingMetadataResponseMessage;
@property (strong) NSMutableArray<MPSEWSRefreshSharingFolderResponseMessageType*>*            refreshSharingFolderResponseMessage;
@property (strong) NSMutableArray<MPSEWSGetSharingFolderResponseMessageType*>*                getSharingFolderResponseMessage;
@property (strong) NSMutableArray<MPSEWSResponseMessageType*>*                                createUserConfigurationResponseMessage;
@property (strong) NSMutableArray<MPSEWSResponseMessageType*>*                                deleteUserConfigurationResponseMessage;
@property (strong) NSMutableArray<MPSEWSGetUserConfigurationResponseMessageType*>*            getUserConfigurationResponseMessage;
@property (strong) NSMutableArray<MPSEWSResponseMessageType*>*                                updateUserConfigurationResponseMessage;
@property (strong) NSMutableArray<MPSEWSGetRoomListsResponseMessageType*>*                    getRoomListsResponse;
@property (strong) NSMutableArray<MPSEWSGetRoomsResponseMessageType*>*                        getRoomsResponse;
@property (strong) NSMutableArray<MPSEWSResponseMessageType*>*                                applyConversationActionResponseMessage;
@property (strong) NSMutableArray<MPSEWSFindMailboxStatisticsByKeywordsResponseMessageType*>* findMailboxStatisticsByKeywordsResponseMessage;
@property (strong) NSMutableArray<MPSEWSGetPasswordExpirationDateResponseMessageType*>*       getPasswordExpirationDateResponse;


- (void) addCreateItemResponseMessage:(MPSEWSItemInfoResponseMessageType*) elem;
- (void) addDeleteItemResponseMessage:(MPSEWSResponseMessageType*) elem;
- (void) addGetItemResponseMessage:(MPSEWSItemInfoResponseMessageType*) elem;
- (void) addUpdateItemResponseMessage:(MPSEWSUpdateItemResponseMessageType*) elem;
- (void) addSendItemResponseMessage:(MPSEWSResponseMessageType*) elem;
- (void) addDeleteFolderResponseMessage:(MPSEWSResponseMessageType*) elem;
- (void) addEmptyFolderResponseMessage:(MPSEWSResponseMessageType*) elem;
- (void) addCreateFolderResponseMessage:(MPSEWSFolderInfoResponseMessageType*) elem;
- (void) addGetFolderResponseMessage:(MPSEWSFolderInfoResponseMessageType*) elem;
- (void) addFindFolderResponseMessage:(MPSEWSFindFolderResponseMessageType*) elem;
- (void) addUpdateFolderResponseMessage:(MPSEWSFolderInfoResponseMessageType*) elem;
- (void) addMoveFolderResponseMessage:(MPSEWSFolderInfoResponseMessageType*) elem;
- (void) addCopyFolderResponseMessage:(MPSEWSFolderInfoResponseMessageType*) elem;
- (void) addCreateAttachmentResponseMessage:(MPSEWSAttachmentInfoResponseMessageType*) elem;
- (void) addDeleteAttachmentResponseMessage:(MPSEWSDeleteAttachmentResponseMessageType*) elem;
- (void) addGetAttachmentResponseMessage:(MPSEWSAttachmentInfoResponseMessageType*) elem;
- (void) addUploadItemsResponseMessage:(MPSEWSUploadItemsResponseMessageType*) elem;
- (void) addExportItemsResponseMessage:(MPSEWSExportItemsResponseMessageType*) elem;
- (void) addFindItemResponseMessage:(MPSEWSFindItemResponseMessageType*) elem;
- (void) addMoveItemResponseMessage:(MPSEWSItemInfoResponseMessageType*) elem;
- (void) addCopyItemResponseMessage:(MPSEWSItemInfoResponseMessageType*) elem;
- (void) addResolveNamesResponseMessage:(MPSEWSResolveNamesResponseMessageType*) elem;
- (void) addExpandDLResponseMessage:(MPSEWSExpandDLResponseMessageType*) elem;
- (void) addGetServerTimeZonesResponseMessage:(MPSEWSGetServerTimeZonesResponseMessageType*) elem;
- (void) addGetEventsResponseMessage:(MPSEWSGetEventsResponseMessageType*) elem;
- (void) addGetStreamingEventsResponseMessage:(MPSEWSGetStreamingEventsResponseMessageType*) elem;
- (void) addSubscribeResponseMessage:(MPSEWSSubscribeResponseMessageType*) elem;
- (void) addUnsubscribeResponseMessage:(MPSEWSResponseMessageType*) elem;
- (void) addSendNotificationResponseMessage:(MPSEWSSendNotificationResponseMessageType*) elem;
- (void) addSyncFolderHierarchyResponseMessage:(MPSEWSSyncFolderHierarchyResponseMessageType*) elem;
- (void) addSyncFolderItemsResponseMessage:(MPSEWSSyncFolderItemsResponseMessageType*) elem;
- (void) addCreateManagedFolderResponseMessage:(MPSEWSFolderInfoResponseMessageType*) elem;
- (void) addConvertIdResponseMessage:(MPSEWSConvertIdResponseMessageType*) elem;
- (void) addGetSharingMetadataResponseMessage:(MPSEWSGetSharingMetadataResponseMessageType*) elem;
- (void) addRefreshSharingFolderResponseMessage:(MPSEWSRefreshSharingFolderResponseMessageType*) elem;
- (void) addGetSharingFolderResponseMessage:(MPSEWSGetSharingFolderResponseMessageType*) elem;
- (void) addCreateUserConfigurationResponseMessage:(MPSEWSResponseMessageType*) elem;
- (void) addDeleteUserConfigurationResponseMessage:(MPSEWSResponseMessageType*) elem;
- (void) addGetUserConfigurationResponseMessage:(MPSEWSGetUserConfigurationResponseMessageType*) elem;
- (void) addUpdateUserConfigurationResponseMessage:(MPSEWSResponseMessageType*) elem;
- (void) addGetRoomListsResponse:(MPSEWSGetRoomListsResponseMessageType*) elem;
- (void) addGetRoomsResponse:(MPSEWSGetRoomsResponseMessageType*) elem;
- (void) addApplyConversationActionResponseMessage:(MPSEWSResponseMessageType*) elem;
- (void) addFindMailboxStatisticsByKeywordsResponseMessage:(MPSEWSFindMailboxStatisticsByKeywordsResponseMessageType*) elem;
- (void) addGetPasswordExpirationDateResponse:(MPSEWSGetPasswordExpirationDateResponseMessageType*) elem;
@end

