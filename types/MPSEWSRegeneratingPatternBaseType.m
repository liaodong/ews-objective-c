#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSRegeneratingPatternBaseType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"


@implementation MPSEWSRegeneratingPatternBaseType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSRegeneratingPatternBaseType class]];

    [handler property      : @"interval"
             withNamespace : 't'
             withXmlTag    : @"Interval"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSRegeneratingPatternBaseType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSIntervalRecurrencePatternBaseType isValid:val forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSRegeneratingPatternBaseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"RegeneratingPatternBaseType: super=%@", [super description]];
}

@end

