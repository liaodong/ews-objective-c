#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSWorkingPeriod.h"


@implementation EWSWorkingPeriod 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSWorkingPeriod class]];

    [handler property   : @"dayOfWeek"
             isRequired : TRUE
             withXmlTag : @"DayOfWeek"
             withHandler: [EWSDaysOfWeekType class]];

    [handler property   : @"startTimeInMinutes"
             isRequired : TRUE
             withXmlTag : @"StartTimeInMinutes"
             withHandler: [EWSIntegerTypeHandler class]];

    [handler property   : @"endTimeInMinutes"
             isRequired : TRUE
             withXmlTag : @"EndTimeInMinutes"
             withHandler: [EWSIntegerTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSWorkingPeriod class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"WorkingPeriod: DayOfWeek=%@ StartTimeInMinutes=%@ EndTimeInMinutes=%@", _dayOfWeek, _startTimeInMinutes, _endTimeInMinutes];
}

@end

