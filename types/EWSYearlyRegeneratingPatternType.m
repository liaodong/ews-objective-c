#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSYearlyRegeneratingPatternType.h"


@implementation EWSYearlyRegeneratingPatternType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSYearlyRegeneratingPatternType class]];

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
    return [EWSYearlyRegeneratingPatternType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"YearlyRegeneratingPatternType: super=%@", [super description]];
}

@end

