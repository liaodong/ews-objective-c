#import <Foundation/Foundation.h>
#import "EWSBaseRequestType.h"



@class EWSNonEmptyArrayOfBaseFolderIdsType;



/* DeleteFolderType */
@interface EWSDeleteFolderType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                            deleteType  /* EWSDisposalType */;
@property (strong) EWSNonEmptyArrayOfBaseFolderIdsType* folderIds;


@end

