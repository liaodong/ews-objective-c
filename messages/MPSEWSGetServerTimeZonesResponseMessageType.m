#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSGetServerTimeZonesResponseMessageType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../handlers/MPSEWSXmlContentTypeHandler.h"
#import "../messages/MPSEWSResponseCodeType.h"
#import "../types/MPSEWSArrayOfTimeZoneDefinitionType.h"
#import "../types/MPSEWSResponseClassType.h"


@implementation MPSEWSGetServerTimeZonesResponseMessageType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSGetServerTimeZonesResponseMessageType class]];

    [handler property    : @"responseClass"
             withAttrTag : @"ResponseClass"
             withHandler : [MPSEWSResponseClassType class]];

    [handler property      : @"messageText"
             withNamespace : 'm'
             withXmlTag    : @"MessageText"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"responseCode"
             withNamespace : 'm'
             withXmlTag    : @"ResponseCode"
             withHandler   : [MPSEWSResponseCodeType class]];

    [handler property      : @"descriptiveLinkKey"
             withNamespace : 'm'
             withXmlTag    : @"DescriptiveLinkKey"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"messageXml"
             withNamespace : 'm'
             withXmlTag    : @"MessageXml"
             withHandler   : [MPSEWSXmlContentTypeHandler class]];

    [handler property      : @"timeZoneDefinitions"
             withNamespace : 'm'
             withXmlTag    : @"TimeZoneDefinitions"
             withHandler   : [MPSEWSArrayOfTimeZoneDefinitionType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSGetServerTimeZonesResponseMessageType*) val
{   (void) val;
    if (![MPSEWSResponseMessageType isValid:val]) return FALSE;
    if ([val timeZoneDefinitions] && ![MPSEWSArrayOfTimeZoneDefinitionType isValid:[val timeZoneDefinitions]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSGetServerTimeZonesResponseMessageType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetServerTimeZonesResponseMessageType: TimeZoneDefinitions=%@ super=%@", _timeZoneDefinitions, [super description]];
}

@end

