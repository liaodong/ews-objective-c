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
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"TimeZone"
             withHandler   : [MPSEWSSerializableTimeZone class]];

    [handler property      : @"workingPeriodArray"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"WorkingPeriodArray"
             withHandler   : [MPSEWSArrayOfWorkingPeriod class]];

    [handler register];
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

