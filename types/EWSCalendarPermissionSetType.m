#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSCalendarPermissionSetType.h"
#import "../types/EWSArrayOfCalendarPermissionsType.h"
#import "../types/EWSArrayOfUnknownEntriesType.h"


@implementation EWSCalendarPermissionSetType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSCalendarPermissionSetType class]];

    [handler property      : @"calendarPermissions"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"CalendarPermissions"
             withHandler   : [EWSArrayOfCalendarPermissionsType class]];

    [handler property      : @"unknownEntries"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"UnknownEntries"
             withHandler   : [EWSArrayOfUnknownEntriesType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSCalendarPermissionSetType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"CalendarPermissionSetType: CalendarPermissions=%@ UnknownEntries=%@", _calendarPermissions, _unknownEntries];
}

@end

