#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSRecurringDayTransitionType.h"
#import "../handlers/MPSEWSDurationTypeHandler.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../types/MPSEWSDayOfWeekType.h"
#import "../types/MPSEWSTransitionTargetType.h"


@implementation MPSEWSRecurringDayTransitionType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSRecurringDayTransitionType class]];

    [handler property      : @"to"
             withNamespace : 't'
             withXmlTag    : @"To"
             withHandler   : [MPSEWSTransitionTargetType class]];

    [handler property      : @"timeOffset"
             withNamespace : 't'
             withXmlTag    : @"TimeOffset"
             withHandler   : [MPSEWSDurationTypeHandler class]];

    [handler property      : @"month"
             withNamespace : 't'
             withXmlTag    : @"Month"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"dayOfWeek"
             withNamespace : 't'
             withXmlTag    : @"DayOfWeek"
             withHandler   : [MPSEWSDayOfWeekType class]];

    [handler property      : @"occurrence"
             withNamespace : 't'
             withXmlTag    : @"Occurrence"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSRecurringDayTransitionType*) val
{   (void) val;
    if (![MPSEWSRecurringTimeTransitionType isValid:val]) return FALSE;
    if ([val dayOfWeek] && ![MPSEWSDayOfWeekType isValid:[val dayOfWeek]]) return FALSE;
    if ([val occurrence] && ![MPSEWSIntegerTypeHandler isValid:[val occurrence]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSRecurringDayTransitionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"RecurringDayTransitionType: DayOfWeek=%@ Occurrence=%@ super=%@", _dayOfWeek, _occurrence, [super description]];
}

@end

