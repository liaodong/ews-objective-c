#import <Foundation/Foundation.h>



@class EWSAlternateIdType;
@class EWSAlternatePublicFolderIdType;
@class EWSAlternatePublicFolderItemIdType;



/* NonEmptyArrayOfAlternateIdsType */
@interface EWSNonEmptyArrayOfAlternateIdsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSAlternateIdType*                 alternateId;
@property (strong) EWSAlternatePublicFolderIdType*     alternatePublicFolderId;
@property (strong) EWSAlternatePublicFolderItemIdType* alternatePublicFolderItemId;


@end

