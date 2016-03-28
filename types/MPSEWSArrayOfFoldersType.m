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

    [handler property      : @"folder"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Folder"
             withHandler   : [MPSEWSFolderType class]];

    [handler property      : @"calendarFolder"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"CalendarFolder"
             withHandler   : [MPSEWSCalendarFolderType class]];

    [handler property      : @"contactsFolder"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"ContactsFolder"
             withHandler   : [MPSEWSContactsFolderType class]];

    [handler property      : @"searchFolder"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"SearchFolder"
             withHandler   : [MPSEWSSearchFolderType class]];

    [handler property      : @"tasksFolder"
             isRequired    : TRUE
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

@end

