#import <Foundation/Foundation.h>




#import "../types/EWSFolderQueryTraversalType.h"
#import "../types/EWSFolderResponseShapeType.h"
#import "../types/EWSNonEmptyArrayOfBaseFolderIdsType.h"
#import "../types/EWSRestrictionType.h"
#import "EWSBaseRequestType.h"



/* FindFolderType */
@interface EWSFindFolderType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString*                            traversal        /* EWSFolderQueryTraversalType */;
@property (retain) EWSFolderResponseShapeType*          folderShape;
@property (retain) EWSRestrictionType*                  restriction;
@property (retain) EWSNonEmptyArrayOfBaseFolderIdsType* parentFolderIds;


@end

