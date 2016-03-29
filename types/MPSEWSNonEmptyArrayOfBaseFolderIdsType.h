#import <Foundation/Foundation.h>



@class MPSEWSDistinguishedFolderIdType;
@class MPSEWSFolderIdType;



/* NonEmptyArrayOfBaseFolderIdsType */
@interface MPSEWSNonEmptyArrayOfBaseFolderIdsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSFolderIdType*>*              folderId;
@property (strong) NSMutableArray<MPSEWSDistinguishedFolderIdType*>* distinguishedFolderId;


- (void) addFolderId:(MPSEWSFolderIdType*) elem;
- (void) addDistinguishedFolderId:(MPSEWSDistinguishedFolderIdType*) elem;
@end

