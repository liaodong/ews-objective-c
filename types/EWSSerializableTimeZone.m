#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSSerializableTimeZone.h"


@implementation EWSSerializableTimeZone 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSSerializableTimeZone class]];

    [handler property   : @"bias"
             isRequired : TRUE
             withXmlTag : @"Bias"
             withHandler: [EWSIntegerTypeHandler class]];

    [handler property   : @"standardTime"
             isRequired : TRUE
             withXmlTag : @"StandardTime"
             withHandler: [EWSSerializableTimeZoneTime class]];

    [handler property   : @"daylightTime"
             isRequired : TRUE
             withXmlTag : @"DaylightTime"
             withHandler: [EWSSerializableTimeZoneTime class]];

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

