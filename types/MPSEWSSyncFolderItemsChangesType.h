#import <Foundation/Foundation.h>



@class MPSEWSSyncFolderItemsCreateOrUpdateType;
@class MPSEWSSyncFolderItemsDeleteType;
@class MPSEWSSyncFolderItemsReadFlagType;



/* SyncFolderItemsChangesType */
@interface MPSEWSSyncFolderItemsChangesType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSSyncFolderItemsCreateOrUpdateType*>* create;
@property (strong) NSMutableArray<MPSEWSSyncFolderItemsCreateOrUpdateType*>* update;
@property (strong) NSMutableArray<MPSEWSSyncFolderItemsDeleteType*>*         delete;
@property (strong) NSMutableArray<MPSEWSSyncFolderItemsReadFlagType*>*       readFlagChange;


- (void) addCreate:(MPSEWSSyncFolderItemsCreateOrUpdateType*) elem;
- (void) addUpdate:(MPSEWSSyncFolderItemsCreateOrUpdateType*) elem;
- (void) addDelete:(MPSEWSSyncFolderItemsDeleteType*) elem;
- (void) addReadFlagChange:(MPSEWSSyncFolderItemsReadFlagType*) elem;
@end

