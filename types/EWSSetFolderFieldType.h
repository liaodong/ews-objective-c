#import <Foundation/Foundation.h>




#import "EWSContactsFolderType.h"
#import "EWSTasksFolderType.h"
#import "EWSCalendarFolderType.h"
#import "EWSSearchFolderType.h"
#import "EWSFolderType.h"
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

