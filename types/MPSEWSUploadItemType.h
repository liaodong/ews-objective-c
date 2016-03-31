#import <Foundation/Foundation.h>



@class MPSEWSFolderIdType;
@class MPSEWSItemIdType;



/* UploadItemType */
@interface MPSEWSUploadItemType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSUploadItemType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*           createAction    /* MPSEWSCreateActionType */;
@property (strong) NSNumber*           isAssociated    /* xs:boolean */;
@property (strong) MPSEWSFolderIdType* parentFolderId;
@property (strong) MPSEWSItemIdType*   itemId;
@property (strong) NSData*             data            /* xs:base64Binary */;


@end

