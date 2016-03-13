#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSDailyRegeneratingPatternType.h"


@implementation EWSDailyRegeneratingPatternType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSDailyRegeneratingPatternType class]];

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
    return [EWSDailyRegeneratingPatternType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"DailyRegeneratingPatternType: super=%@", [super description]];
}

@end

