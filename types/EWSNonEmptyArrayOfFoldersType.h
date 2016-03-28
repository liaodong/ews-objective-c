#import <Foundation/Foundation.h>



@class EWSCalendarFolderType;
@class EWSContactsFolderType;
@class EWSFolderType;
@class EWSSearchFolderType;
@class EWSTasksFolderType;



/* NonEmptyArrayOfFoldersType */
@interface EWSNonEmptyArrayOfFoldersType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSFolderType*         folder;
@property (strong) EWSCalendarFolderType* calendarFolder;
@property (strong) EWSContactsFolderType* contactsFolder;
@property (strong) EWSSearchFolderType*   searchFolder;
@property (strong) EWSTasksFolderType*    tasksFolder;


@end

