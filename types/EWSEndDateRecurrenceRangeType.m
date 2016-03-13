#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSEndDateRecurrenceRangeType.h"


@implementation EWSEndDateRecurrenceRangeType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSEndDateRecurrenceRangeType class]];

    [handler property   : @"startDate"
             isRequired : TRUE
             withXmlTag : @"StartDate"
             withHandler: [EWSDateTypeHandler class]];

    [handler property   : @"endDate"
             isRequired : TRUE
             withXmlTag : @"EndDate"
             withHandler: [EWSDateTypeHandler class]];

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

