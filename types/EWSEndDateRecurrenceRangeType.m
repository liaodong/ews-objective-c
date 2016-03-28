#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSEndDateRecurrenceRangeType.h"
#import "../handlers/EWSDateTypeHandler.h"


@implementation EWSEndDateRecurrenceRangeType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSEndDateRecurrenceRangeType class]];

    [handler property      : @"startDate"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"StartDate"
             withHandler   : [EWSDateTypeHandler class]];

    [handler property      : @"endDate"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"EndDate"
             withHandler   : [EWSDateTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSEndDateRecurrenceRangeType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"EndDateRecurrenceRangeType: EndDate=%@ super=%@", _endDate, [super description]];
}

@end

