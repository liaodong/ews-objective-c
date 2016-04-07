#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSFolderIdType;



/* SyncFolderHierarchyDeleteType */
@interface MPSEWSSyncFolderHierarchyDeleteType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSyncFolderHierarchyDeleteType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSFolderIdType* folderId;


@end

