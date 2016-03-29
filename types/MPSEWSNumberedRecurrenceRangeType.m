#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSNumberedRecurrenceRangeType.h"
#import "../handlers/MPSEWSDateTypeHandler.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"


@implementation MPSEWSNumberedRecurrenceRangeType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSNumberedRecurrenceRangeType class]];

    [handler property      : @"startDate"
             withNamespace : 't'
             withXmlTag    : @"StartDate"
             withHandler   : [MPSEWSDateTypeHandler class]];

    [handler property      : @"numberOfOccurrences"
             withNamespace : 't'
             withXmlTag    : @"NumberOfOccurrences"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSNumberedRecurrenceRangeType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NumberedRecurrenceRangeType: NumberOfOccurrences=%@ super=%@", _numberOfOccurrences, [super description]];
}

@end

