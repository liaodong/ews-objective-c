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

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSItemInfoResponseMessageType*            createItemResponseMessage;
@property (strong) MPSEWSResponseMessageType*                    deleteItemResponseMessage;
@property (strong) MPSEWSItemInfoResponseMessageType*            getItemResponseMessage;
@property (strong) MPSEWSUpdateItemResponseMessageType*          updateItemResponseMessage;
@property (strong) MPSEWSResponseMessageType*                    sendItemResponseMessage;
@property (strong) MPSEWSResponseMessageType*                    deleteFolderResponseMessage;
@property (strong) MPSEWSFolderInfoResponseMessageType*          createFolderResponseMessage;
@property (strong) MPSEWSFolderInfoResponseMessageType*          getFolderResponseMessage;
@property (strong) MPSEWSFindFolderResponseMessageType*          findFolderResponseMessage;
@property (strong) MPSEWSFolderInfoResponseMessageType*          updateFolderResponseMessage;
@property (strong) MPSEWSFolderInfoResponseMessageType*          moveFolderResponseMessage;
@property (strong) MPSEWSFolderInfoResponseMessageType*          pCopyFolderResponseMessage;
@property (strong) MPSEWSAttachmentInfoResponseMessageType*      createAttachmentResponseMessage;
@property (strong) MPSEWSDeleteAttachmentResponseMessageType*    deleteAttachmentResponseMessage;
@property (strong) MPSEWSAttachmentInfoResponseMessageType*      getAttachmentResponseMessage;
@property (strong) MPSEWSFindItemResponseMessageType*            findItemResponseMessage;
@property (strong) MPSEWSItemInfoResponseMessageType*            moveItemResponseMessage;
@property (strong) MPSEWSItemInfoResponseMessageType*            pCopyItemResponseMessage;
@property (strong) MPSEWSResolveNamesResponseMessageType*        resolveNamesResponseMessage;
@property (strong) MPSEWSExpandDLResponseMessageType*            expandDLResponseMessage;
@property (strong) MPSEWSGetEventsResponseMessageType*           getEventsResponseMessage;
@property (strong) MPSEWSSubscribeResponseMessageType*           subscribeResponseMessage;
@property (strong) MPSEWSResponseMessageType*                    unsubscribeResponseMessage;
@property (strong) MPSEWSSendNotificationResponseMessageType*    sendNotificationResponseMessage;
@property (strong) MPSEWSSyncFolderHierarchyResponseMessageType* syncFolderHierarchyResponseMessage;
@property (strong) MPSEWSSyncFolderItemsResponseMessageType*     syncFolderItemsResponseMessage;
@property (strong) MPSEWSFolderInfoResponseMessageType*          createManagedFolderResponseMessage;
@property (strong) MPSEWSConvertIdResponseMessageType*           convertIdResponseMessage;


@end

