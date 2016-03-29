#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfCalendarPermissionsType.h"
#import "../types/MPSEWSCalendarPermissionType.h"


@implementation MPSEWSArrayOfCalendarPermissionsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfCalendarPermissionsType class]];

    [handler listProperty  : @"calendarPermission"
             isNonEmpty    : TRUE
             useSelector   : @"addCalendarPermission"
             withNamespace : 't'
             withXmlTag    : @"CalendarPermission"
             withHandler   : [MPSEWSCalendarPermissionType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSArrayOfCalendarPermissionsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfCalendarPermissionsType: CalendarPermission=%@", _calendarPermission];
}

- (void) addCalendarPermission:(MPSEWSCalendarPermissionType*) elem
{
    if (![self calendarPermission]) {
        [self setCalendarPermission:[[NSMutableArray<MPSEWSCalendarPermissionType*> alloc] init]];
    }
    [_calendarPermission addObject:elem];
}

@end

