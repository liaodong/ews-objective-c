#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSFolderResponseShapeType;
@class MPSEWSNonEmptyArrayOfBaseFolderIdsType;



/* GetFolderType */
@interface MPSEWSGetFolderType : MPSEWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSFolderResponseShapeType*          folderShape;
@property (strong) MPSEWSNonEmptyArrayOfBaseFolderIdsType* folderIds;


@end

