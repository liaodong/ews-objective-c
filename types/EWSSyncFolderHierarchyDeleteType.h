#import <Foundation/Foundation.h>




#import "EWSFolderIdType.h"



/* SyncFolderHierarchyDeleteType */
@interface EWSSyncFolderHierarchyDeleteType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSFolderIdType* folderId;


@end

