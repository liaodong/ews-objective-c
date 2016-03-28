#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSWeeklyRegeneratingPatternType.h"
#import "../handlers/EWSIntegerTypeHandler.h"


@implementation EWSWeeklyRegeneratingPatternType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSWeeklyRegeneratingPatternType class]];

    [handler property      : @"interval"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Interval"
             withHandler   : [EWSIntegerTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSWeeklyRegeneratingPatternType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"WeeklyRegeneratingPatternType: super=%@", [super description]];
}

@end

