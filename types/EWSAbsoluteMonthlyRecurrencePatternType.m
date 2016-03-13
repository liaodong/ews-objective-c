#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSAbsoluteMonthlyRecurrencePatternType.h"


@implementation EWSAbsoluteMonthlyRecurrencePatternType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSAbsoluteMonthlyRecurrencePatternType class]];

    [handler property      : @"interval"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Interval"
             withHandler   : [EWSIntegerTypeHandler class]];

    [handler property      : @"dayOfMonth"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"DayOfMonth"
             withHandler   : [EWSIntegerTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSAbsoluteMonthlyRecurrencePatternType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"AbsoluteMonthlyRecurrencePatternType: DayOfMonth=%@ super=%@", _dayOfMonth, [super description]];
}

@end

