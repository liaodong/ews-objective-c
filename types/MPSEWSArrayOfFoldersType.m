#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfFoldersType.h"
#import "../types/MPSEWSCalendarFolderType.h"
#import "../types/MPSEWSContactsFolderType.h"
#import "../types/MPSEWSFolderType.h"
#import "../types/MPSEWSSearchFolderType.h"
#import "../types/MPSEWSTasksFolderType.h"


@implementation MPSEWSArrayOfFoldersType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfFoldersType class]];

    [handler listProperty  : @"folder"
             useSelector   : @"addFolder"
             withNamespace : 't'
             withXmlTag    : @"Folder"
             withHandler   : [MPSEWSFolderType class]];

    [handler listProperty  : @"calendarFolder"
             useSelector   : @"addCalendarFolder"
             withNamespace : 't'
             withXmlTag    : @"CalendarFolder"
             withHandler   : [MPSEWSCalendarFolderType class]];

    [handler listProperty  : @"contactsFolder"
             useSelector   : @"addContactsFolder"
             withNamespace : 't'
             withXmlTag    : @"ContactsFolder"
             withHandler   : [MPSEWSContactsFolderType class]];

    [handler listProperty  : @"searchFolder"
             useSelector   : @"addSearchFolder"
             withNamespace : 't'
             withXmlTag    : @"SearchFolder"
             withHandler   : [MPSEWSSearchFolderType class]];

    [handler listProperty  : @"tasksFolder"
             useSelector   : @"addTasksFolder"
             withNamespace : 't'
             withXmlTag    : @"TasksFolder"
             withHandler   : [MPSEWSTasksFolderType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSArrayOfFoldersType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfFoldersType: Folder=%@ CalendarFolder=%@ ContactsFolder=%@ SearchFolder=%@ TasksFolder=%@", _folder, _calendarFolder, _contactsFolder, _searchFolder, _tasksFolder];
}

- (void) addFolder:(MPSEWSFolderType*) elem
{
    if (![self folder]) {
        [self setFolder:[[NSMutableArray<MPSEWSFolderType*> alloc] init]];
    }
    [_folder addObject:elem];
}

- (void) addCalendarFolder:(MPSEWSCalendarFolderType*) elem
{
    if (![self calendarFolder]) {
        [self setCalendarFolder:[[NSMutableArray<MPSEWSCalendarFolderType*> alloc] init]];
    }
    [_calendarFolder addObject:elem];
}

- (void) addContactsFolder:(MPSEWSContactsFolderType*) elem
{
    if (![self contactsFolder]) {
        [self setContactsFolder:[[NSMutableArray<MPSEWSContactsFolderType*> alloc] init]];
    }
    [_contactsFolder addObject:elem];
}

- (void) addSearchFolder:(MPSEWSSearchFolderType*) elem
{
    if (![self searchFolder]) {
        [self setSearchFolder:[[NSMutableArray<MPSEWSSearchFolderType*> alloc] init]];
    }
    [_searchFolder addObject:elem];
}

- (void) addTasksFolder:(MPSEWSTasksFolderType*) elem
{
    if (![self tasksFolder]) {
        [self setTasksFolder:[[NSMutableArray<MPSEWSTasksFolderType*> alloc] init]];
    }
    [_tasksFolder addObject:elem];
}

@end

