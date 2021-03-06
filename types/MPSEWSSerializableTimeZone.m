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
             withNamespace : 't'
             withXmlTag    : @"Bias"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"standardTime"
             withNamespace : 't'
             withXmlTag    : @"StandardTime"
             withHandler   : [MPSEWSSerializableTimeZoneTime class]];

    [handler property      : @"daylightTime"
             withNamespace : 't'
             withXmlTag    : @"DaylightTime"
             withHandler   : [MPSEWSSerializableTimeZoneTime class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSSerializableTimeZone*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val bias] && ![MPSEWSIntegerTypeHandler isValid:[val bias] forVersion:ver]) return FALSE;
    if ([val standardTime] && ![MPSEWSSerializableTimeZoneTime isValid:[val standardTime] forVersion:ver]) return FALSE;
    if ([val daylightTime] && ![MPSEWSSerializableTimeZoneTime isValid:[val daylightTime] forVersion:ver]) return FALSE;
    return TRUE;
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

