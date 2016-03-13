#import <Foundation/Foundation.h>




#import "../types/EWSCalendarFolderType.h"
#import "../types/EWSContactsFolderType.h"
#import "../types/EWSFolderType.h"
#import "../types/EWSSearchFolderType.h"
#import "../types/EWSTasksFolderType.h"
#import "EWSFolderChangeDescriptionType.h"



/* SetFolderFieldType */
@interface EWSSetFolderFieldType : EWSFolderChangeDescriptionType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSFolderType*         folder;
@property (retain) EWSCalendarFolderType* calendarFolder;
@property (retain) EWSContactsFolderType* contactsFolder;
@property (retain) EWSSearchFolderType*   searchFolder;
@property (retain) EWSTasksFolderType*    tasksFolder;


@end

