#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSWeeklyRegeneratingPatternType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"


@implementation MPSEWSWeeklyRegeneratingPatternType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSWeeklyRegeneratingPatternType class]];

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
    return [MPSEWSWeeklyRegeneratingPatternType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"WeeklyRegeneratingPatternType: super=%@", [super description]];
}

@end

