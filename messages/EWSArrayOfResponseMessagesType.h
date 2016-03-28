#import <Foundation/Foundation.h>



@class EWSAttachmentInfoResponseMessageType;
@class EWSConvertIdResponseMessageType;
@class EWSDeleteAttachmentResponseMessageType;
@class EWSExpandDLResponseMessageType;
@class EWSFindFolderResponseMessageType;
@class EWSFindItemResponseMessageType;
@class EWSFolderInfoResponseMessageType;
@class EWSGetEventsResponseMessageType;
@class EWSItemInfoResponseMessageType;
@class EWSResolveNamesResponseMessageType;
@class EWSResponseMessageType;
@class EWSSendNotificationResponseMessageType;
@class EWSSubscribeResponseMessageType;
@class EWSSyncFolderHierarchyResponseMessageType;
@class EWSSyncFolderItemsResponseMessageType;
@class EWSUpdateItemResponseMessageType;



/* ArrayOfResponseMessagesType */
@interface EWSArrayOfResponseMessagesType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSItemInfoResponseMessageType*            createItemResponseMessage;
@property (strong) EWSResponseMessageType*                    deleteItemResponseMessage;
@property (strong) EWSItemInfoResponseMessageType*            getItemResponseMessage;
@property (strong) EWSUpdateItemResponseMessageType*          updateItemResponseMessage;
@property (strong) EWSResponseMessageType*                    sendItemResponseMessage;
@property (strong) EWSResponseMessageType*                    deleteFolderResponseMessage;
@property (strong) EWSFolderInfoResponseMessageType*          createFolderResponseMessage;
@property (strong) EWSFolderInfoResponseMessageType*          getFolderResponseMessage;
@property (strong) EWSFindFolderResponseMessageType*          findFolderResponseMessage;
@property (strong) EWSFolderInfoResponseMessageType*          updateFolderResponseMessage;
@property (strong) EWSFolderInfoResponseMessageType*          moveFolderResponseMessage;
@property (strong) EWSFolderInfoResponseMessageType*          pCopyFolderResponseMessage;
@property (strong) EWSAttachmentInfoResponseMessageType*      createAttachmentResponseMessage;
@property (strong) EWSDeleteAttachmentResponseMessageType*    deleteAttachmentResponseMessage;
@property (strong) EWSAttachmentInfoResponseMessageType*      getAttachmentResponseMessage;
@property (strong) EWSFindItemResponseMessageType*            findItemResponseMessage;
@property (strong) EWSItemInfoResponseMessageType*            moveItemResponseMessage;
@property (strong) EWSItemInfoResponseMessageType*            pCopyItemResponseMessage;
@property (strong) EWSResolveNamesResponseMessageType*        resolveNamesResponseMessage;
@property (strong) EWSExpandDLResponseMessageType*            expandDLResponseMessage;
@property (strong) EWSGetEventsResponseMessageType*           getEventsResponseMessage;
@property (strong) EWSSubscribeResponseMessageType*           subscribeResponseMessage;
@property (strong) EWSResponseMessageType*                    unsubscribeResponseMessage;
@property (strong) EWSSendNotificationResponseMessageType*    sendNotificationResponseMessage;
@property (strong) EWSSyncFolderHierarchyResponseMessageType* syncFolderHierarchyResponseMessage;
@property (strong) EWSSyncFolderItemsResponseMessageType*     syncFolderItemsResponseMessage;
@property (strong) EWSFolderInfoResponseMessageType*          createManagedFolderResponseMessage;
@property (strong) EWSConvertIdResponseMessageType*           convertIdResponseMessage;


@end

