#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSFolderResponseShapeType;
@class MPSEWSTargetFolderIdType;



/* SyncFolderHierarchyType */
@interface MPSEWSSyncFolderHierarchyType : MPSEWSBaseRequestType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSyncFolderHierarchyType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSFolderResponseShapeType* folderShape;
@property (strong) MPSEWSTargetFolderIdType*      syncFolderId;
@property (strong) NSString*                      syncState     /* xs:string */;


@end

