#import <Foundation/Foundation.h>
#import "MPSEWSFolderChangeDescriptionType.h"



@class MPSEWSCalendarFolderType;
@class MPSEWSContactsFolderType;
@class MPSEWSFolderType;
@class MPSEWSSearchFolderType;
@class MPSEWSTasksFolderType;



/* SetFolderFieldType */
@interface MPSEWSSetFolderFieldType : MPSEWSFolderChangeDescriptionType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSetFolderFieldType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSFolderType*         folder;
@property (strong) MPSEWSCalendarFolderType* calendarFolder;
@property (strong) MPSEWSContactsFolderType* contactsFolder;
@property (strong) MPSEWSSearchFolderType*   searchFolder;
@property (strong) MPSEWSTasksFolderType*    tasksFolder;


@end

