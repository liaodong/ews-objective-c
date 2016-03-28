#import <Foundation/Foundation.h>



@class MPSEWSAlternateIdType;
@class MPSEWSAlternatePublicFolderIdType;
@class MPSEWSAlternatePublicFolderItemIdType;



/* NonEmptyArrayOfAlternateIdsType */
@interface MPSEWSNonEmptyArrayOfAlternateIdsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSAlternateIdType*                 alternateId;
@property (strong) MPSEWSAlternatePublicFolderIdType*     alternatePublicFolderId;
@property (strong) MPSEWSAlternatePublicFolderItemIdType* alternatePublicFolderItemId;


@end

