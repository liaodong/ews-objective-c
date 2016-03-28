#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSSerializableTimeZone.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../types/MPSEWSSerializableTimeZoneTime.h"


@implementation MPSEWSSerializableTimeZone 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSSerializableTimeZone class]];

    [handler property      : @"bias"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Bias"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"standardTime"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"StandardTime"
             withHandler   : [MPSEWSSerializableTimeZoneTime class]];

    [handler property      : @"daylightTime"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"DaylightTime"
             withHandler   : [MPSEWSSerializableTimeZoneTime class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSSerializableTimeZone class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SerializableTimeZone: Bias=%@ StandardTime=%@ DaylightTime=%@", _bias, _standardTime, _daylightTime];
}

@end

