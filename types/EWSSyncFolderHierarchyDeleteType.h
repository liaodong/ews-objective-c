#import <Foundation/Foundation.h>



@class EWSFolderIdType;



/* SyncFolderHierarchyDeleteType */
@interface EWSSyncFolderHierarchyDeleteType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSFolderIdType* folderId;


@end

