#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSCalendarFolderType;
@class MPSEWSContactsFolderType;
@class MPSEWSFolderType;
@class MPSEWSSearchFolderType;
@class MPSEWSTasksFolderType;



/* NonEmptyArrayOfFoldersType */
@interface MPSEWSNonEmptyArrayOfFoldersType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfFoldersType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSFolderType*>*         folder;
@property (strong) NSMutableArray<MPSEWSCalendarFolderType*>* calendarFolder;
@property (strong) NSMutableArray<MPSEWSContactsFolderType*>* contactsFolder;
@property (strong) NSMutableArray<MPSEWSSearchFolderType*>*   searchFolder;
@property (strong) NSMutableArray<MPSEWSTasksFolderType*>*    tasksFolder;


- (void) addFolder:(MPSEWSFolderType*) elem;
- (void) addCalendarFolder:(MPSEWSCalendarFolderType*) elem;
- (void) addContactsFolder:(MPSEWSContactsFolderType*) elem;
- (void) addSearchFolder:(MPSEWSSearchFolderType*) elem;
- (void) addTasksFolder:(MPSEWSTasksFolderType*) elem;
@end

