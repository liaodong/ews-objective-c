#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSDelegatePermissionsType.h"
#import "../types/MPSEWSDelegateFolderPermissionLevelType.h"


@implementation MPSEWSDelegatePermissionsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSDelegatePermissionsType class]];

    [handler property      : @"calendarFolderPermissionLevel"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"CalendarFolderPermissionLevel"
             withHandler   : [MPSEWSDelegateFolderPermissionLevelType class]];

    [handler property      : @"tasksFolderPermissionLevel"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"TasksFolderPermissionLevel"
             withHandler   : [MPSEWSDelegateFolderPermissionLevelType class]];

    [handler property      : @"inboxFolderPermissionLevel"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"InboxFolderPermissionLevel"
             withHandler   : [MPSEWSDelegateFolderPermissionLevelType class]];

    [handler property      : @"contactsFolderPermissionLevel"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ContactsFolderPermissionLevel"
             withHandler   : [MPSEWSDelegateFolderPermissionLevelType class]];

    [handler property      : @"notesFolderPermissionLevel"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"NotesFolderPermissionLevel"
             withHandler   : [MPSEWSDelegateFolderPermissionLevelType class]];

    [handler property      : @"journalFolderPermissionLevel"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"JournalFolderPermissionLevel"
             withHandler   : [MPSEWSDelegateFolderPermissionLevelType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSDelegatePermissionsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"DelegatePermissionsType: CalendarFolderPermissionLevel=%@ TasksFolderPermissionLevel=%@ InboxFolderPermissionLevel=%@ ContactsFolderPermissionLevel=%@ NotesFolderPermissionLevel=%@ JournalFolderPermissionLevel=%@", _calendarFolderPermissionLevel, _tasksFolderPermissionLevel, _inboxFolderPermissionLevel, _contactsFolderPermissionLevel, _notesFolderPermissionLevel, _journalFolderPermissionLevel];
}

@end
