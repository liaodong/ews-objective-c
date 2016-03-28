#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSDelegatePermissionsType.h"
#import "../types/EWSDelegateFolderPermissionLevelType.h"


@implementation EWSDelegatePermissionsType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSDelegatePermissionsType class]];

    [handler property      : @"calendarFolderPermissionLevel"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"CalendarFolderPermissionLevel"
             withHandler   : [EWSDelegateFolderPermissionLevelType class]];

    [handler property      : @"tasksFolderPermissionLevel"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"TasksFolderPermissionLevel"
             withHandler   : [EWSDelegateFolderPermissionLevelType class]];

    [handler property      : @"inboxFolderPermissionLevel"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"InboxFolderPermissionLevel"
             withHandler   : [EWSDelegateFolderPermissionLevelType class]];

    [handler property      : @"contactsFolderPermissionLevel"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ContactsFolderPermissionLevel"
             withHandler   : [EWSDelegateFolderPermissionLevelType class]];

    [handler property      : @"notesFolderPermissionLevel"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"NotesFolderPermissionLevel"
             withHandler   : [EWSDelegateFolderPermissionLevelType class]];

    [handler property      : @"journalFolderPermissionLevel"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"JournalFolderPermissionLevel"
             withHandler   : [EWSDelegateFolderPermissionLevelType class]];

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

