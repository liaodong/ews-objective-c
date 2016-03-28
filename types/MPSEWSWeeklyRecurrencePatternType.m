#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSWeeklyRecurrencePatternType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../types/MPSEWSDaysOfWeekType.h"


@implementation MPSEWSWeeklyRecurrencePatternType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSWeeklyRecurrencePatternType class]];

    [handler property      : @"interval"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Interval"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"daysOfWeek"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"DaysOfWeek"
             withHandler   : [MPSEWSDaysOfWeekType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSWeeklyRecurrencePatternType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"WeeklyRecurrencePatternType: DaysOfWeek=%@ super=%@", _daysOfWeek, [super description]];
}

@end

