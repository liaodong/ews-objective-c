#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSFolderResponseShapeType;
@class MPSEWSNonEmptyArrayOfBaseFolderIdsType;
@class MPSEWSRestrictionType;



/* FindFolderType */
@interface MPSEWSFindFolderType : MPSEWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                               traversal        /* MPSEWSFolderQueryTraversalType */;
@property (strong) MPSEWSFolderResponseShapeType*          folderShape;
@property (strong) MPSEWSRestrictionType*                  restriction;
@property (strong) MPSEWSNonEmptyArrayOfBaseFolderIdsType* parentFolderIds;


@end

