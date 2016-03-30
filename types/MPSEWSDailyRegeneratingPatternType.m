#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSDailyRegeneratingPatternType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"


@implementation MPSEWSDailyRegeneratingPatternType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSDailyRegeneratingPatternType class]];

    [handler property      : @"interval"
             withNamespace : 't'
             withXmlTag    : @"Interval"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSDailyRegeneratingPatternType*) val
{   (void) val;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSDailyRegeneratingPatternType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"DailyRegeneratingPatternType: super=%@", [super description]];
}

@end

