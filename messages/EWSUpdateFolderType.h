#import <Foundation/Foundation.h>
#import "EWSBaseRequestType.h"



@class EWSNonEmptyArrayOfFolderChangesType;



/* UpdateFolderType */
@interface EWSUpdateFolderType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSNonEmptyArrayOfFolderChangesType* folderChanges;


@end

