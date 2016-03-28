#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSArrayOfCalendarPermissionsType.h"
#import "../types/EWSCalendarPermissionType.h"


@implementation EWSArrayOfCalendarPermissionsType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSArrayOfCalendarPermissionsType class]];

    [handler property      : @"calendarPermission"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"CalendarPermission"
             withHandler   : [EWSCalendarPermissionType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSArrayOfCalendarPermissionsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfCalendarPermissionsType: CalendarPermission=%@", _calendarPermission];
}

@end

