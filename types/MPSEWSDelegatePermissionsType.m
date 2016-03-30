#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSDelegatePermissionsType.h"
#import "../types/MPSEWSDelegateFolderPermissionLevelType.h"


@implementation MPSEWSDelegatePermissionsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSDelegatePermissionsType class]];

    [handler property      : @"calendarFolderPermissionLevel"
             withNamespace : 't'
             withXmlTag    : @"CalendarFolderPermissionLevel"
             withHandler   : [MPSEWSDelegateFolderPermissionLevelType class]];

    [handler property      : @"tasksFolderPermissionLevel"
             withNamespace : 't'
             withXmlTag    : @"TasksFolderPermissionLevel"
             withHandler   : [MPSEWSDelegateFolderPermissionLevelType class]];

    [handler property      : @"inboxFolderPermissionLevel"
             withNamespace : 't'
             withXmlTag    : @"InboxFolderPermissionLevel"
             withHandler   : [MPSEWSDelegateFolderPermissionLevelType class]];

    [handler property      : @"contactsFolderPermissionLevel"
             withNamespace : 't'
             withXmlTag    : @"ContactsFolderPermissionLevel"
             withHandler   : [MPSEWSDelegateFolderPermissionLevelType class]];

    [handler property      : @"notesFolderPermissionLevel"
             withNamespace : 't'
             withXmlTag    : @"NotesFolderPermissionLevel"
             withHandler   : [MPSEWSDelegateFolderPermissionLevelType class]];

    [handler property      : @"journalFolderPermissionLevel"
             withNamespace : 't'
             withXmlTag    : @"JournalFolderPermissionLevel"
             withHandler   : [MPSEWSDelegateFolderPermissionLevelType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSDelegatePermissionsType*) val
{   (void) val;
    if ([val calendarFolderPermissionLevel] && ![MPSEWSDelegateFolderPermissionLevelType isValid:[val calendarFolderPermissionLevel]]) return FALSE;
    if ([val tasksFolderPermissionLevel] && ![MPSEWSDelegateFolderPermissionLevelType isValid:[val tasksFolderPermissionLevel]]) return FALSE;
    if ([val inboxFolderPermissionLevel] && ![MPSEWSDelegateFolderPermissionLevelType isValid:[val inboxFolderPermissionLevel]]) return FALSE;
    if ([val contactsFolderPermissionLevel] && ![MPSEWSDelegateFolderPermissionLevelType isValid:[val contactsFolderPermissionLevel]]) return FALSE;
    if ([val notesFolderPermissionLevel] && ![MPSEWSDelegateFolderPermissionLevelType isValid:[val notesFolderPermissionLevel]]) return FALSE;
    if ([val journalFolderPermissionLevel] && ![MPSEWSDelegateFolderPermissionLevelType isValid:[val journalFolderPermissionLevel]]) return FALSE;
    return TRUE;
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

