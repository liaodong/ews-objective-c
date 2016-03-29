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

