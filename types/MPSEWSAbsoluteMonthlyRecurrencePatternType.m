#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSAbsoluteMonthlyRecurrencePatternType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"


@implementation MPSEWSAbsoluteMonthlyRecurrencePatternType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSAbsoluteMonthlyRecurrencePatternType class]];

    [handler property      : @"interval"
             withNamespace : 't'
             withXmlTag    : @"Interval"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"dayOfMonth"
             withNamespace : 't'
             withXmlTag    : @"DayOfMonth"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSAbsoluteMonthlyRecurrencePatternType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"AbsoluteMonthlyRecurrencePatternType: DayOfMonth=%@ super=%@", _dayOfMonth, [super description]];
}

@end

