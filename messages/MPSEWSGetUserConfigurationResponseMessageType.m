#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSGetUserConfigurationResponseMessageType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../handlers/MPSEWSXmlContentTypeHandler.h"
#import "../messages/MPSEWSResponseCodeType.h"
#import "../types/MPSEWSResponseClassType.h"
#import "../types/MPSEWSUserConfigurationType.h"


@implementation MPSEWSGetUserConfigurationResponseMessageType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSGetUserConfigurationResponseMessageType class]];

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

    [handler property      : @"userConfiguration"
             withNamespace : 'm'
             withXmlTag    : @"UserConfiguration"
             withHandler   : [MPSEWSUserConfigurationType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSGetUserConfigurationResponseMessageType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSResponseMessageType isValid:val forVersion:ver]) return FALSE;
    if ([val userConfiguration] && ![MPSEWSUserConfigurationType isValid:[val userConfiguration] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSGetUserConfigurationResponseMessageType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetUserConfigurationResponseMessageType: UserConfiguration=%@ super=%@", _userConfiguration, [super description]];
}

@end

