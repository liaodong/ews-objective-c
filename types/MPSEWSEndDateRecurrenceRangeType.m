#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSEndDateRecurrenceRangeType.h"
#import "../handlers/MPSEWSDateTypeHandler.h"


@implementation MPSEWSEndDateRecurrenceRangeType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSEndDateRecurrenceRangeType class]];

    [handler property      : @"startDate"
             withNamespace : 't'
             withXmlTag    : @"StartDate"
             withHandler   : [MPSEWSDateTypeHandler class]];

    [handler property      : @"endDate"
             withNamespace : 't'
             withXmlTag    : @"EndDate"
             withHandler   : [MPSEWSDateTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSEndDateRecurrenceRangeType*) val
{   (void) val;
    if (![MPSEWSRecurrenceRangeBaseType isValid:val]) return FALSE;
    if ([val endDate] && ![MPSEWSDateTypeHandler isValid:[val endDate]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSEndDateRecurrenceRangeType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"EndDateRecurrenceRangeType: EndDate=%@ super=%@", _endDate, [super description]];
}

@end

