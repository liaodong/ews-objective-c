#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSMonthlyRegeneratingPatternType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"


@implementation MPSEWSMonthlyRegeneratingPatternType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSMonthlyRegeneratingPatternType class]];

    [handler property      : @"interval"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Interval"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSMonthlyRegeneratingPatternType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"MonthlyRegeneratingPatternType: super=%@", [super description]];
}

@end

