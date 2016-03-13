#import <Foundation/Foundation.h>




#import "../types/EWSNonEmptyArrayOfFoldersType.h"
#import "../types/EWSTargetFolderIdType.h"
#import "EWSBaseRequestType.h"



/* CreateFolderType */
@interface EWSCreateFolderType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSTargetFolderIdType*         parentFolderId;
@property (retain) EWSNonEmptyArrayOfFoldersType* folders;


@end

