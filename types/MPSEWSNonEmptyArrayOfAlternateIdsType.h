#import <Foundation/Foundation.h>



@class MPSEWSAlternateIdType;
@class MPSEWSAlternatePublicFolderIdType;
@class MPSEWSAlternatePublicFolderItemIdType;



/* NonEmptyArrayOfAlternateIdsType */
@interface MPSEWSNonEmptyArrayOfAlternateIdsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfAlternateIdsType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSAlternateIdType*>*                 alternateId;
@property (strong) NSMutableArray<MPSEWSAlternatePublicFolderIdType*>*     alternatePublicFolderId;
@property (strong) NSMutableArray<MPSEWSAlternatePublicFolderItemIdType*>* alternatePublicFolderItemId;


- (void) addAlternateId:(MPSEWSAlternateIdType*) elem;
- (void) addAlternatePublicFolderId:(MPSEWSAlternatePublicFolderIdType*) elem;
- (void) addAlternatePublicFolderItemId:(MPSEWSAlternatePublicFolderItemIdType*) elem;
@end

