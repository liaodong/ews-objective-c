#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSNonEmptyArrayOfFoldersType.h"
#import "../types/EWSCalendarFolderType.h"
#import "../types/EWSContactsFolderType.h"
#import "../types/EWSFolderType.h"
#import "../types/EWSSearchFolderType.h"
#import "../types/EWSTasksFolderType.h"


@implementation EWSNonEmptyArrayOfFoldersType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSNonEmptyArrayOfFoldersType class]];

    [handler property      : @"folder"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Folder"
             withHandler   : [EWSFolderType class]];

    [handler property      : @"calendarFolder"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"CalendarFolder"
             withHandler   : [EWSCalendarFolderType class]];

    [handler property      : @"contactsFolder"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"ContactsFolder"
             withHandler   : [EWSContactsFolderType class]];

    [handler property      : @"searchFolder"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"SearchFolder"
             withHandler   : [EWSSearchFolderType class]];

    [handler property      : @"tasksFolder"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"TasksFolder"
             withHandler   : [EWSTasksFolderType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSNonEmptyArrayOfFoldersType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfFoldersType: Folder=%@ CalendarFolder=%@ ContactsFolder=%@ SearchFolder=%@ TasksFolder=%@", _folder, _calendarFolder, _contactsFolder, _searchFolder, _tasksFolder];
}

@end

