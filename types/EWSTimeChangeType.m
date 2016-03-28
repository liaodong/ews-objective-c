#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSTimeChangeType.h"
#import "../handlers/EWSDateTypeHandler.h"
#import "../handlers/EWSDurationTypeHandler.h"
#import "../handlers/EWSStringTypeHandler.h"
#import "../handlers/EWSTimeTypeHandler.h"
#import "../types/EWSRelativeYearlyRecurrencePatternType.h"


@implementation EWSTimeChangeType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSTimeChangeType class]];

    [handler property    : @"timeZoneName"
             isRequired  : FALSE
             withAttrTag : @"TimeZoneName"
             withHandler : [EWSStringTypeHandler class]];

    [handler property      : @"offset"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Offset"
             withHandler   : [EWSDurationTypeHandler class]];

    [handler property      : @"relativeYearlyRecurrence"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"RelativeYearlyRecurrence"
             withHandler   : [EWSRelativeYearlyRecurrencePatternType class]];

    [handler property      : @"absoluteDate"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"AbsoluteDate"
             withHandler   : [EWSDateTypeHandler class]];

    [handler property      : @"time"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Time"
             withHandler   : [EWSTimeTypeHandler class]];

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

