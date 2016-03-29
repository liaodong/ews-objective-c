#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSSerializableTimeZoneTime.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../handlers/MPSEWSShortTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSDayOfWeekType.h"


@implementation MPSEWSSerializableTimeZoneTime 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSSerializableTimeZoneTime class]];

    [handler property      : @"bias"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Bias"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"time"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Time"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"dayOrder"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"DayOrder"
             withHandler   : [MPSEWSShortTypeHandler class]];

    [handler property      : @"month"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Month"
             withHandler   : [MPSEWSShortTypeHandler class]];

    [handler property      : @"dayOfWeek"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"DayOfWeek"
             withHandler   : [MPSEWSDayOfWeekType class]];

    [handler property      : @"year"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Year"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSSerializableTimeZoneTime class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SerializableTimeZoneTime: Bias=%@ Time=%@ DayOrder=%@ Month=%@ DayOfWeek=%@ Year=%@", _bias, _time, _dayOrder, _month, _dayOfWeek, _year];
}

@end
