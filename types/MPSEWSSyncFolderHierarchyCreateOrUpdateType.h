#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSCalendarFolderType;
@class MPSEWSContactsFolderType;
@class MPSEWSFolderType;
@class MPSEWSSearchFolderType;
@class MPSEWSTasksFolderType;



/* SyncFolderHierarchyCreateOrUpdateType */
@interface MPSEWSSyncFolderHierarchyCreateOrUpdateType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSyncFolderHierarchyCreateOrUpdateType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSFolderType*         folder;
@property (strong) MPSEWSCalendarFolderType* calendarFolder;
@property (strong) MPSEWSContactsFolderType* contactsFolder;
@property (strong) MPSEWSSearchFolderType*   searchFolder;
@property (strong) MPSEWSTasksFolderType*    tasksFolder;


@end

