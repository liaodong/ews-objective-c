#import <Foundation/Foundation.h>
#import "EWSBaseRequestType.h"



@class EWSFolderResponseShapeType;
@class EWSNonEmptyArrayOfBaseFolderIdsType;
@class EWSRestrictionType;



/* FindFolderType */
@interface EWSFindFolderType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                            traversal        /* EWSFolderQueryTraversalType */;
@property (strong) EWSFolderResponseShapeType*          folderShape;
@property (strong) EWSRestrictionType*                  restriction;
@property (strong) EWSNonEmptyArrayOfBaseFolderIdsType* parentFolderIds;


@end

