#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSWorkingHours.h"
#import "../types/MPSEWSArrayOfWorkingPeriod.h"
#import "../types/MPSEWSSerializableTimeZone.h"


@implementation MPSEWSWorkingHours 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSWorkingHours class]];

    [handler property      : @"timeZone"
             withNamespace : 't'
             withXmlTag    : @"TimeZone"
             withHandler   : [MPSEWSSerializableTimeZone class]];

    [handler property      : @"workingPeriodArray"
             withNamespace : 't'
             withXmlTag    : @"WorkingPeriodArray"
             withHandler   : [MPSEWSArrayOfWorkingPeriod class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSWorkingHours*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val timeZone] && ![MPSEWSSerializableTimeZone isValid:[val timeZone] forVersion:ver]) return FALSE;
    if ([val workingPeriodArray] && ![MPSEWSArrayOfWorkingPeriod isValid:[val workingPeriodArray] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSWorkingHours class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"WorkingHours: TimeZone=%@ WorkingPeriodArray=%@", _timeZone, _workingPeriodArray];
}

@end

