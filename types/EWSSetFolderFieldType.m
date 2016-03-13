#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSSetFolderFieldType.h"


@implementation EWSSetFolderFieldType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSSetFolderFieldType class]];

    [handler property   : @"path"
             isRequired : TRUE
             withXmlTag : @"Path"
             withHandler: [EWSBasePathToElementType class]];

    [handler property   : @"folder"
             isRequired : TRUE
             withXmlTag : @"Folder"
             withHandler: [EWSFolderType class]];

    [handler property   : @"calendarFolder"
             isRequired : TRUE
             withXmlTag : @"CalendarFolder"
             withHandler: [EWSCalendarFolderType class]];

    [handler property   : @"contactsFolder"
             isRequired : TRUE
             withXmlTag : @"ContactsFolder"
             withHandler: [EWSContactsFolderType class]];

    [handler property   : @"searchFolder"
             isRequired : TRUE
             withXmlTag : @"SearchFolder"
             withHandler: [EWSSearchFolderType class]];

    [handler property   : @"tasksFolder"
             isRequired : TRUE
             withXmlTag : @"TasksFolder"
             withHandler: [EWSTasksFolderType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSSetFolderFieldType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SetFolderFieldType: Folder=%@ CalendarFolder=%@ ContactsFolder=%@ SearchFolder=%@ TasksFolder=%@ super=%@", _folder, _calendarFolder, _contactsFolder, _searchFolder, _tasksFolder, [super description]];
}

@end

