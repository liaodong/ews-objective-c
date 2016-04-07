#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSSyncFolderHierarchyCreateOrUpdateType;
@class MPSEWSSyncFolderHierarchyDeleteType;



/* SyncFolderHierarchyChangesType */
@interface MPSEWSSyncFolderHierarchyChangesType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSyncFolderHierarchyChangesType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSSyncFolderHierarchyCreateOrUpdateType*>* create;
@property (strong) NSMutableArray<MPSEWSSyncFolderHierarchyCreateOrUpdateType*>* update;
@property (strong) NSMutableArray<MPSEWSSyncFolderHierarchyDeleteType*>*         delete;


- (void) addCreate:(MPSEWSSyncFolderHierarchyCreateOrUpdateType*) elem;
- (void) addUpdate:(MPSEWSSyncFolderHierarchyCreateOrUpdateType*) elem;
- (void) addDelete:(MPSEWSSyncFolderHierarchyDeleteType*) elem;
@end

