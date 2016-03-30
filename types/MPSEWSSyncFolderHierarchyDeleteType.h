#import <Foundation/Foundation.h>



@class MPSEWSFolderIdType;



/* SyncFolderHierarchyDeleteType */
@interface MPSEWSSyncFolderHierarchyDeleteType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSyncFolderHierarchyDeleteType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSFolderIdType* folderId;


@end

