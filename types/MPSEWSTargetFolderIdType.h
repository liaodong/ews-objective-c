#import <Foundation/Foundation.h>



@class MPSEWSDistinguishedFolderIdType;
@class MPSEWSFolderIdType;



/* TargetFolderIdType */
@interface MPSEWSTargetFolderIdType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSTargetFolderIdType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSFolderIdType*              folderId;
@property (strong) MPSEWSDistinguishedFolderIdType* distinguishedFolderId;


@end

