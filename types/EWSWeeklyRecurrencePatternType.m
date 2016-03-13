#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSWeeklyRecurrencePatternType.h"


@implementation EWSWeeklyRecurrencePatternType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSWeeklyRecurrencePatternType class]];

    [handler property      : @"interval"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Interval"
             withHandler   : [EWSIntegerTypeHandler class]];

    [handler property      : @"daysOfWeek"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"DaysOfWeek"
             withHandler   : [EWSDaysOfWeekType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSWeeklyRecurrencePatternType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"WeeklyRecurrencePatternType: DaysOfWeek=%@ super=%@", _daysOfWeek, [super description]];
}

@end

