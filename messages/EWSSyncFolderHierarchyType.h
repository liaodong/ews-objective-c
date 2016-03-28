#import <Foundation/Foundation.h>
#import "EWSBaseRequestType.h"



@class EWSFolderResponseShapeType;
@class EWSTargetFolderIdType;



/* SyncFolderHierarchyType */
@interface EWSSyncFolderHierarchyType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSFolderResponseShapeType* folderShape;
@property (strong) EWSTargetFolderIdType*      syncFolderId;
@property (strong) NSString*                   syncState     /* xs:string */;


@end

