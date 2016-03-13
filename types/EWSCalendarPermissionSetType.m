#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSCalendarPermissionSetType.h"


@implementation EWSCalendarPermissionSetType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSCalendarPermissionSetType class]];

    [handler property   : @"calendarPermissions"
             isRequired : TRUE
             withXmlTag : @"CalendarPermissions"
             withHandler: [EWSArrayOfCalendarPermissionsType class]];

    [handler property   : @"unknownEntries"
             isRequired : FALSE
             withXmlTag : @"UnknownEntries"
             withHandler: [EWSArrayOfUnknownEntriesType class]];

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

