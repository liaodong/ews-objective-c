#import <Foundation/Foundation.h>




#import "../handlers/EWSStringTypeHandler.h"
#import "../types/EWSFolderResponseShapeType.h"
#import "../types/EWSTargetFolderIdType.h"
#import "EWSBaseRequestType.h"



/* SyncFolderHierarchyType */
@interface EWSSyncFolderHierarchyType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSFolderResponseShapeType* folderShape;
@property (retain) EWSTargetFolderIdType*      syncFolderId;
@property (retain) NSString*                   syncState     /* xs:string */;


@end

