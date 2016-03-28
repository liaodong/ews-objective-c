#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSNonEmptyArrayOfFoldersType;
@class MPSEWSTargetFolderIdType;



/* CreateFolderType */
@interface MPSEWSCreateFolderType : MPSEWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSTargetFolderIdType*         parentFolderId;
@property (strong) MPSEWSNonEmptyArrayOfFoldersType* folders;


@end

