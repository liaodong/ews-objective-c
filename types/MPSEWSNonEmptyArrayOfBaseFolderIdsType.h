#import <Foundation/Foundation.h>



@class MPSEWSDistinguishedFolderIdType;
@class MPSEWSFolderIdType;



/* NonEmptyArrayOfBaseFolderIdsType */
@interface MPSEWSNonEmptyArrayOfBaseFolderIdsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSFolderIdType*              folderId;
@property (strong) MPSEWSDistinguishedFolderIdType* distinguishedFolderId;


@end

