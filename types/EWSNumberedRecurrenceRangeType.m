#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSNumberedRecurrenceRangeType.h"


@implementation EWSNumberedRecurrenceRangeType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSNumberedRecurrenceRangeType class]];

    [handler property   : @"startDate"
             isRequired : TRUE
             withXmlTag : @"StartDate"
             withHandler: [EWSDateTypeHandler class]];

    [handler property   : @"numberOfOccurrences"
             isRequired : TRUE
             withXmlTag : @"NumberOfOccurrences"
             withHandler: [EWSIntegerTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSNumberedRecurrenceRangeType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NumberedRecurrenceRangeType: NumberOfOccurrences=%@ super=%@", _numberOfOccurrences, [super description]];
}

@end

