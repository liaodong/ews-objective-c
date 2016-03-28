#import <Foundation/Foundation.h>



@class MPSEWSDistinguishedFolderIdType;
@class MPSEWSFolderIdType;



/* TargetFolderIdType */
@interface MPSEWSTargetFolderIdType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSFolderIdType*              folderId;
@property (strong) MPSEWSDistinguishedFolderIdType* distinguishedFolderId;


@end

