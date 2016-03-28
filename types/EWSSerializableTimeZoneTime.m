#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSSerializableTimeZoneTime.h"
#import "../handlers/EWSIntegerTypeHandler.h"
#import "../handlers/EWSShortTypeHandler.h"
#import "../handlers/EWSStringTypeHandler.h"
#import "../types/EWSDayOfWeekType.h"


@implementation EWSSerializableTimeZoneTime 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSSerializableTimeZoneTime class]];

    [handler property      : @"bias"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Bias"
             withHandler   : [EWSIntegerTypeHandler class]];

    [handler property      : @"time"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Time"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"dayOrder"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"DayOrder"
             withHandler   : [EWSShortTypeHandler class]];

    [handler property      : @"month"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Month"
             withHandler   : [EWSShortTypeHandler class]];

    [handler property      : @"dayOfWeek"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"DayOfWeek"
             withHandler   : [EWSDayOfWeekType class]];

    [handler property      : @"year"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Year"
             withHandler   : [EWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSSerializableTimeZoneTime class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SerializableTimeZoneTime: Bias=%@ Time=%@ DayOrder=%@ Month=%@ DayOfWeek=%@ Year=%@", _bias, _time, _dayOrder, _month, _dayOfWeek, _year];
}

@end

