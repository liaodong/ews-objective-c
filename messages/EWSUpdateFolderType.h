#import <Foundation/Foundation.h>




#import "../types/EWSNonEmptyArrayOfFolderChangesType.h"
#import "EWSBaseRequestType.h"



/* UpdateFolderType */
@interface EWSUpdateFolderType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSArray<EWSFolderChangeType*>* folderChanges  /* EWSNonEmptyArrayOfFolderChangesType */;


@end

