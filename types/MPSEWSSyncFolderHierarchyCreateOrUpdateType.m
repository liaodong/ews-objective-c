#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSSyncFolderHierarchyCreateOrUpdateType.h"
#import "../types/MPSEWSCalendarFolderType.h"
#import "../types/MPSEWSContactsFolderType.h"
#import "../types/MPSEWSFolderType.h"
#import "../types/MPSEWSSearchFolderType.h"
#import "../types/MPSEWSTasksFolderType.h"


@implementation MPSEWSSyncFolderHierarchyCreateOrUpdateType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSSyncFolderHierarchyCreateOrUpdateType class]];

    [handler property      : @"folder"
             withNamespace : 't'
             withXmlTag    : @"Folder"
             withHandler   : [MPSEWSFolderType class]];

    [handler property      : @"calendarFolder"
             withNamespace : 't'
             withXmlTag    : @"CalendarFolder"
             withHandler   : [MPSEWSCalendarFolderType class]];

    [handler property      : @"contactsFolder"
             withNamespace : 't'
             withXmlTag    : @"ContactsFolder"
             withHandler   : [MPSEWSContactsFolderType class]];

    [handler property      : @"searchFolder"
             withNamespace : 't'
             withXmlTag    : @"SearchFolder"
             withHandler   : [MPSEWSSearchFolderType class]];

    [handler property      : @"tasksFolder"
             withNamespace : 't'
             withXmlTag    : @"TasksFolder"
             withHandler   : [MPSEWSTasksFolderType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSSyncFolderHierarchyCreateOrUpdateType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val folder] && ![MPSEWSFolderType isValid:[val folder] forVersion:ver]) return FALSE;
    if ([val calendarFolder] && ![MPSEWSCalendarFolderType isValid:[val calendarFolder] forVersion:ver]) return FALSE;
    if ([val contactsFolder] && ![MPSEWSContactsFolderType isValid:[val contactsFolder] forVersion:ver]) return FALSE;
    if ([val searchFolder] && ![MPSEWSSearchFolderType isValid:[val searchFolder] forVersion:ver]) return FALSE;
    if ([val tasksFolder] && ![MPSEWSTasksFolderType isValid:[val tasksFolder] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSSyncFolderHierarchyCreateOrUpdateType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SyncFolderHierarchyCreateOrUpdateType: Folder=%@ CalendarFolder=%@ ContactsFolder=%@ SearchFolder=%@ TasksFolder=%@", _folder, _calendarFolder, _contactsFolder, _searchFolder, _tasksFolder];
}

@end

