#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSTimeChangeType.h"


@implementation EWSTimeChangeType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSTimeChangeType class]];

    [handler property    : @"timeZoneName"
             isRequired  : FALSE
             withAttrTag : @"TimeZoneName"
             withHandler : [EWSStringTypeHandler class]];

    [handler property   : @"offset"
             isRequired : TRUE
             withXmlTag : @"Offset"
             withHandler: [EWSDurationTypeHandler class]];

    [handler property   : @"relativeYearlyRecurrence"
             isRequired : TRUE
             withXmlTag : @"RelativeYearlyRecurrence"
             withHandler: [EWSRelativeYearlyRecurrencePatternType class]];

    [handler property   : @"absoluteDate"
             isRequired : TRUE
             withXmlTag : @"AbsoluteDate"
             withHandler: [EWSDateTypeHandler class]];

    [handler property   : @"time"
             isRequired : TRUE
             withXmlTag : @"Time"
             withHandler: [EWSTimeTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSTimeChangeType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"TimeChangeType: TimeZoneName=%@ Offset=%@ RelativeYearlyRecurrence=%@ AbsoluteDate=%@ Time=%@", _timeZoneName, _offset, _relativeYearlyRecurrence, _absoluteDate, _time];
}

@end

