#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSCalendarPermissionSetType.h"
#import "../types/MPSEWSArrayOfCalendarPermissionsType.h"
#import "../types/MPSEWSArrayOfUnknownEntriesType.h"


@implementation MPSEWSCalendarPermissionSetType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSCalendarPermissionSetType class]];

    [handler property      : @"calendarPermissions"
             withNamespace : 't'
             withXmlTag    : @"CalendarPermissions"
             withHandler   : [MPSEWSArrayOfCalendarPermissionsType class]];

    [handler property      : @"unknownEntries"
             withNamespace : 't'
             withXmlTag    : @"UnknownEntries"
             withHandler   : [MPSEWSArrayOfUnknownEntriesType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSCalendarPermissionSetType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val calendarPermissions] && ![MPSEWSArrayOfCalendarPermissionsType isValid:[val calendarPermissions] forVersion:ver]) return FALSE;
    if ([val unknownEntries] && ![MPSEWSArrayOfUnknownEntriesType isValid:[val unknownEntries] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSCalendarPermissionSetType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"CalendarPermissionSetType: CalendarPermissions=%@ UnknownEntries=%@", _calendarPermissions, _unknownEntries];
}

@end

