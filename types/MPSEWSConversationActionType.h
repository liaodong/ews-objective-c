#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSArrayOfStringsType;
@class MPSEWSItemIdType;
@class MPSEWSTargetFolderIdType;



/* ConversationActionType */
@interface MPSEWSConversationActionType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSConversationActionType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                 action                    /* MPSEWSConversationActionTypeType */;
@property (strong) MPSEWSItemIdType*         conversationId;
@property (strong) MPSEWSTargetFolderIdType* contextFolderId;
@property (strong) NSString*                 conversationLastSyncTime  /* xs:dateTime */;
@property (strong) NSNumber*                 processRightAway          /* xs:boolean */;
@property (strong) MPSEWSTargetFolderIdType* destinationFolderId;
@property (strong) MPSEWSArrayOfStringsType* categories;
@property (strong) NSNumber*                 enableAlwaysDelete        /* xs:boolean */;
@property (strong) NSNumber*                 isRead                    /* xs:boolean */;
@property (strong) NSString*                 deleteType                /* MPSEWSDisposalType */;


@end

