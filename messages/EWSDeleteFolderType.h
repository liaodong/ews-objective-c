#import <Foundation/Foundation.h>




#import "../types/EWSDisposalType.h"
#import "../types/EWSNonEmptyArrayOfBaseFolderIdsType.h"
#import "EWSBaseRequestType.h"



/* DeleteFolderType */
@interface EWSDeleteFolderType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString*                            deleteType  /* EWSDisposalType */;
@property (retain) EWSNonEmptyArrayOfBaseFolderIdsType* folderIds;


@end

