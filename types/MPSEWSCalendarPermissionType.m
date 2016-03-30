#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSCalendarPermissionType.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../types/MPSEWSCalendarPermissionLevelType.h"
#import "../types/MPSEWSCalendarPermissionReadAccessType.h"
#import "../types/MPSEWSPermissionActionType.h"
#import "../types/MPSEWSUserIdType.h"


@implementation MPSEWSCalendarPermissionType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSCalendarPermissionType class]];

    [handler property      : @"userId"
             withNamespace : 't'
             withXmlTag    : @"UserId"
             withHandler   : [MPSEWSUserIdType class]];

    [handler property      : @"canCreateItems"
             withNamespace : 't'
             withXmlTag    : @"CanCreateItems"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"canCreateSubFolders"
             withNamespace : 't'
             withXmlTag    : @"CanCreateSubFolders"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isFolderOwner"
             withNamespace : 't'
             withXmlTag    : @"IsFolderOwner"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isFolderVisible"
             withNamespace : 't'
             withXmlTag    : @"IsFolderVisible"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isFolderContact"
             withNamespace : 't'
             withXmlTag    : @"IsFolderContact"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"editItems"
             withNamespace : 't'
             withXmlTag    : @"EditItems"
             withHandler   : [MPSEWSPermissionActionType class]];

    [handler property      : @"deleteItems"
             withNamespace : 't'
             withXmlTag    : @"DeleteItems"
             withHandler   : [MPSEWSPermissionActionType class]];

    [handler property      : @"readItems"
             withNamespace : 't'
             withXmlTag    : @"ReadItems"
             withHandler   : [MPSEWSCalendarPermissionReadAccessType class]];

    [handler property      : @"calendarPermissionLevel"
             withNamespace : 't'
             withXmlTag    : @"CalendarPermissionLevel"
             withHandler   : [MPSEWSCalendarPermissionLevelType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSCalendarPermissionType*) val
{   (void) val;
    if (![MPSEWSBasePermissionType isValid:val]) return FALSE;
    if ([val readItems] && ![MPSEWSCalendarPermissionReadAccessType isValid:[val readItems]]) return FALSE;
    if ([val calendarPermissionLevel] && ![MPSEWSCalendarPermissionLevelType isValid:[val calendarPermissionLevel]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSCalendarPermissionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"CalendarPermissionType: ReadItems=%@ CalendarPermissionLevel=%@ super=%@", _readItems, _calendarPermissionLevel, [super description]];
}

@end

