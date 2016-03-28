#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSIntervalRecurrencePatternBaseType.h"
#import "../handlers/EWSIntegerTypeHandler.h"


@implementation EWSIntervalRecurrencePatternBaseType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSIntervalRecurrencePatternBaseType class]];

    [handler property      : @"interval"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Interval"
             withHandler   : [EWSIntegerTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSIntervalRecurrencePatternBaseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"IntervalRecurrencePatternBaseType: Interval=%@ super=%@", _interval, [super description]];
}

@end

