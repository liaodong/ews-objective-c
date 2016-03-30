#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSYearlyRegeneratingPatternType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"


@implementation MPSEWSYearlyRegeneratingPatternType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSYearlyRegeneratingPatternType class]];

    [handler property      : @"interval"
             withNamespace : 't'
             withXmlTag    : @"Interval"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSYearlyRegeneratingPatternType*) val
{   (void) val;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSYearlyRegeneratingPatternType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"YearlyRegeneratingPatternType: super=%@", [super description]];
}

@end

