#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSMonthlyRegeneratingPatternType.h"


@implementation EWSMonthlyRegeneratingPatternType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSMonthlyRegeneratingPatternType class]];

    [handler property   : @"interval"
             isRequired : TRUE
             withXmlTag : @"Interval"
             withHandler: [EWSIntegerTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSMonthlyRegeneratingPatternType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"MonthlyRegeneratingPatternType: super=%@", [super description]];
}

@end

