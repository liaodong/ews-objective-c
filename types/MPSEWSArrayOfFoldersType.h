#import <Foundation/Foundation.h>



@class MPSEWSCalendarFolderType;
@class MPSEWSContactsFolderType;
@class MPSEWSFolderType;
@class MPSEWSSearchFolderType;
@class MPSEWSTasksFolderType;



/* ArrayOfFoldersType */
@interface MPSEWSArrayOfFoldersType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfFoldersType*) val;

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

