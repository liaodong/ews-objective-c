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
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"UserId"
             withHandler   : [MPSEWSUserIdType class]];

    [handler property      : @"canCreateItems"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"CanCreateItems"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"canCreateSubFolders"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"CanCreateSubFolders"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isFolderOwner"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsFolderOwner"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isFolderVisible"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsFolderVisible"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isFolderContact"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IsFolderContact"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"editItems"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"EditItems"
             withHandler   : [MPSEWSPermissionActionType class]];

    [handler property      : @"deleteItems"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"DeleteItems"
             withHandler   : [MPSEWSPermissionActionType class]];

    [handler property      : @"readItems"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ReadItems"
             withHandler   : [MPSEWSCalendarPermissionReadAccessType class]];

    [handler property      : @"calendarPermissionLevel"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"CalendarPermissionLevel"
             withHandler   : [MPSEWSCalendarPermissionLevelType class]];

    [handler register];
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

