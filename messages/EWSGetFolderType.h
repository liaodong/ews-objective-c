#import <Foundation/Foundation.h>
#import "EWSBaseRequestType.h"



@class EWSFolderResponseShapeType;
@class EWSNonEmptyArrayOfBaseFolderIdsType;



/* GetFolderType */
@interface EWSGetFolderType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSFolderResponseShapeType*          folderShape;
@property (strong) EWSNonEmptyArrayOfBaseFolderIdsType* folderIds;


@end

