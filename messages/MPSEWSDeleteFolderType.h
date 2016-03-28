#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSNonEmptyArrayOfBaseFolderIdsType;



/* DeleteFolderType */
@interface MPSEWSDeleteFolderType : MPSEWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                               deleteType  /* MPSEWSDisposalType */;
@property (strong) MPSEWSNonEmptyArrayOfBaseFolderIdsType* folderIds;


@end

