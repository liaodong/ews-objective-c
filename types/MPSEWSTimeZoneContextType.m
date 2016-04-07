#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSTimeZoneContextType.h"
#import "../types/MPSEWSTimeZoneDefinitionType.h"


@implementation MPSEWSTimeZoneContextType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSTimeZoneContextType class]];

    [handler property      : @"timeZoneDefinition"
             withNamespace : 't'
             withXmlTag    : @"TimeZoneDefinition"
             withHandler   : [MPSEWSTimeZoneDefinitionType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSTimeZoneContextType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val timeZoneDefinition] && ![MPSEWSTimeZoneDefinitionType isValid:[val timeZoneDefinition] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSTimeZoneContextType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"TimeZoneContextType: TimeZoneDefinition=%@", _timeZoneDefinition];
}

@end

