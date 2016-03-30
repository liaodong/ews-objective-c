#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSIntervalRecurrencePatternBaseType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"


@implementation MPSEWSIntervalRecurrencePatternBaseType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSIntervalRecurrencePatternBaseType class]];

    [handler property      : @"interval"
             withNamespace : 't'
             withXmlTag    : @"Interval"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSIntervalRecurrencePatternBaseType*) val
{   (void) val;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSIntervalRecurrencePatternBaseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"IntervalRecurrencePatternBaseType: Interval=%@ super=%@", _interval, [super description]];
}

@end

