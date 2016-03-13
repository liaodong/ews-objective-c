#import <Foundation/Foundation.h>




#import "../types/EWSFolderResponseShapeType.h"
#import "../types/EWSNonEmptyArrayOfBaseFolderIdsType.h"
#import "EWSBaseRequestType.h"



/* GetFolderType */
@interface EWSGetFolderType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSFolderResponseShapeType*          folderShape;
@property (retain) EWSNonEmptyArrayOfBaseFolderIdsType* folderIds;


@end

