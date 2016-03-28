#import <Foundation/Foundation.h>
#import "EWSBaseRequestType.h"



@class EWSNonEmptyArrayOfFoldersType;
@class EWSTargetFolderIdType;



/* CreateFolderType */
@interface EWSCreateFolderType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSTargetFolderIdType*         parentFolderId;
@property (strong) EWSNonEmptyArrayOfFoldersType* folders;


@end

