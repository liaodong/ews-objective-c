#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSDelegatePermissionsType.h"


@implementation EWSDelegatePermissionsType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSDelegatePermissionsType class]];

    [handler property   : @"calendarFolderPermissionLevel"
             isRequired : FALSE
             withXmlTag : @"CalendarFolderPermissionLevel"
             withHandler: [EWSDelegateFolderPermissionLevelType class]];

    [handler property   : @"tasksFolderPermissionLevel"
             isRequired : FALSE
             withXmlTag : @"TasksFolderPermissionLevel"
             withHandler: [EWSDelegateFolderPermissionLevelType class]];

    [handler property   : @"inboxFolderPermissionLevel"
             isRequired : FALSE
             withXmlTag : @"InboxFolderPermissionLevel"
             withHandler: [EWSDelegateFolderPermissionLevelType class]];

    [handler property   : @"contactsFolderPermissionLevel"
             isRequired : FALSE
             withXmlTag : @"ContactsFolderPermissionLevel"
             withHandler: [EWSDelegateFolderPermissionLevelType class]];

    [handler property   : @"notesFolderPermissionLevel"
             isRequired : FALSE
             withXmlTag : @"NotesFolderPermissionLevel"
             withHandler: [EWSDelegateFolderPermissionLevelType class]];

    [handler property   : @"journalFolderPermissionLevel"
             isRequired : FALSE
             withXmlTag : @"JournalFolderPermissionLevel"
             withHandler: [EWSDelegateFolderPermissionLevelType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSDelegatePermissionsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"DelegatePermissionsType: CalendarFolderPermissionLevel=%@ TasksFolderPermissionLevel=%@ InboxFolderPermissionLevel=%@ ContactsFolderPermissionLevel=%@ NotesFolderPermissionLevel=%@ JournalFolderPermissionLevel=%@", _calendarFolderPermissionLevel, _tasksFolderPermissionLevel, _inboxFolderPermissionLevel, _contactsFolderPermissionLevel, _notesFolderPermissionLevel, _journalFolderPermissionLevel];
}

@end
