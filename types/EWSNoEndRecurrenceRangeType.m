#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSNoEndRecurrenceRangeType.h"


@implementation EWSNoEndRecurrenceRangeType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSNoEndRecurrenceRangeType class]];

    [handler property   : @"startDate"
             isRequired : TRUE
             withXmlTag : @"StartDate"
             withHandler: [EWSDateTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSNoEndRecurrenceRangeType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NoEndRecurrenceRangeType: super=%@", [super description]];
}

@end

