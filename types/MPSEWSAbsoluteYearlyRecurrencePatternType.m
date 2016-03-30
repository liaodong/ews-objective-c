#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSAbsoluteYearlyRecurrencePatternType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../types/MPSEWSMonthNamesType.h"


@implementation MPSEWSAbsoluteYearlyRecurrencePatternType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSAbsoluteYearlyRecurrencePatternType class]];

    [handler property      : @"dayOfMonth"
             withNamespace : 't'
             withXmlTag    : @"DayOfMonth"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"month"
             withNamespace : 't'
             withXmlTag    : @"Month"
             withHandler   : [MPSEWSMonthNamesType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSAbsoluteYearlyRecurrencePatternType*) val
{   (void) val;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSAbsoluteYearlyRecurrencePatternType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"AbsoluteYearlyRecurrencePatternType: DayOfMonth=%@ Month=%@ super=%@", _dayOfMonth, _month, [super description]];
}

@end

