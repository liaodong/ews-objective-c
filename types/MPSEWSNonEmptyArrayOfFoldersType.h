#import <Foundation/Foundation.h>



@class MPSEWSCalendarFolderType;
@class MPSEWSContactsFolderType;
@class MPSEWSFolderType;
@class MPSEWSSearchFolderType;
@class MPSEWSTasksFolderType;



/* NonEmptyArrayOfFoldersType */
@interface MPSEWSNonEmptyArrayOfFoldersType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSFolderType*         folder;
@property (strong) MPSEWSCalendarFolderType* calendarFolder;
@property (strong) MPSEWSContactsFolderType* contactsFolder;
@property (strong) MPSEWSSearchFolderType*   searchFolder;
@property (strong) MPSEWSTasksFolderType*    tasksFolder;


@end

