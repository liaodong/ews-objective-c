#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfTimeZoneDefinitionType.h"
#import "../types/MPSEWSTimeZoneDefinitionType.h"


@implementation MPSEWSArrayOfTimeZoneDefinitionType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfTimeZoneDefinitionType class]];

    [handler property      : @"timeZoneDefinition"
             withNamespace : 't'
             withXmlTag    : @"TimeZoneDefinition"
             withHandler   : [MPSEWSTimeZoneDefinitionType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSArrayOfTimeZoneDefinitionType*) val
{   (void) val;
    if ([val timeZoneDefinition] && ![MPSEWSTimeZoneDefinitionType isValid:[val timeZoneDefinition]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSArrayOfTimeZoneDefinitionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfTimeZoneDefinitionType: TimeZoneDefinition=%@", _timeZoneDefinition];
}

@end

