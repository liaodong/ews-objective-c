#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSTimeZoneType.h"
#import "../handlers/MPSEWSDurationTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSTimeChangeType.h"


@implementation MPSEWSTimeZoneType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSTimeZoneType class]];

    [handler property    : @"timeZoneName"
             withAttrTag : @"TimeZoneName"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler property      : @"baseOffset"
             withNamespace : 't'
             withXmlTag    : @"BaseOffset"
             withHandler   : [MPSEWSDurationTypeHandler class]];

    [handler property      : @"standard"
             withNamespace : 't'
             withXmlTag    : @"Standard"
             withHandler   : [MPSEWSTimeChangeType class]];

    [handler property      : @"daylight"
             withNamespace : 't'
             withXmlTag    : @"Daylight"
             withHandler   : [MPSEWSTimeChangeType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSTimeZoneType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val timeZoneName] && ![MPSEWSStringTypeHandler isValid:[val timeZoneName] forVersion: ver]) return FALSE;
    if ([val baseOffset] && ![MPSEWSDurationTypeHandler isValid:[val baseOffset] forVersion:ver]) return FALSE;
    if ([val standard] && ![MPSEWSTimeChangeType isValid:[val standard] forVersion:ver]) return FALSE;
    if ([val daylight] && ![MPSEWSTimeChangeType isValid:[val daylight] forVersion:ver]) return FALSE;
    return TRUE;
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
    return [NSString stringWithFormat:@"TimeZoneType: TimeZoneName=%@ BaseOffset=%@ Standard=%@ Daylight=%@", _timeZoneName, _baseOffset, _standard, _daylight];
}

@end

