#import <Foundation/Foundation.h>



@class MPSEWSDistinguishedFolderIdType;
@class MPSEWSFolderIdType;
@class MPSEWSNonEmptyArrayOfFolderChangeDescriptionsType;



/* FolderChangeType */
@interface MPSEWSFolderChangeType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSFolderIdType*                                folderId;
@property (strong) MPSEWSDistinguishedFolderIdType*                   distinguishedFolderId;
@property (strong) MPSEWSNonEmptyArrayOfFolderChangeDescriptionsType* updates;


@end

