#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSSerializableTimeZone.h"
#import "../handlers/EWSIntegerTypeHandler.h"
#import "../types/EWSSerializableTimeZoneTime.h"


@implementation EWSSerializableTimeZone 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSSerializableTimeZone class]];

    [handler property      : @"bias"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Bias"
             withHandler   : [EWSIntegerTypeHandler class]];

    [handler property      : @"standardTime"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"StandardTime"
             withHandler   : [EWSSerializableTimeZoneTime class]];

    [handler property      : @"daylightTime"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"DaylightTime"
             withHandler   : [EWSSerializableTimeZoneTime class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSSerializableTimeZone class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SerializableTimeZone: Bias=%@ StandardTime=%@ DaylightTime=%@", _bias, _standardTime, _daylightTime];
}

@end

