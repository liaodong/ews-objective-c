#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSTimeZoneType.h"
#import "../handlers/MPSEWSDurationTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"


@implementation MPSEWSTimeZoneType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSTimeZoneType class]];

    [handler property    : @"timeZoneName"
             isRequired  : FALSE
             withAttrTag : @"TimeZoneName"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler property      : @"baseOffset"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"BaseOffset"
             withHandler   : [MPSEWSDurationTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSTimeZoneType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"TimeZoneType: TimeZoneName=%@ BaseOffset=%@", _timeZoneName, _baseOffset];
}

@end

