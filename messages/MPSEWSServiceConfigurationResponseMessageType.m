#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSServiceConfigurationResponseMessageType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../handlers/MPSEWSXmlContentTypeHandler.h"
#import "../messages/MPSEWSResponseCodeType.h"
#import "../types/MPSEWSMailTipsServiceConfiguration.h"
#import "../types/MPSEWSProtectionRulesServiceConfiguration.h"
#import "../types/MPSEWSResponseClassType.h"
#import "../types/MPSEWSUnifiedMessageServiceConfiguration.h"


@implementation MPSEWSServiceConfigurationResponseMessageType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSServiceConfigurationResponseMessageType class]];

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

    [handler property      : @"mailTipsConfiguration"
             withNamespace : 'm'
             withXmlTag    : @"MailTipsConfiguration"
             withHandler   : [MPSEWSMailTipsServiceConfiguration class]];

    [handler property      : @"unifiedMessagingConfiguration"
             withNamespace : 'm'
             withXmlTag    : @"UnifiedMessagingConfiguration"
             withHandler   : [MPSEWSUnifiedMessageServiceConfiguration class]];

    [handler property      : @"protectionRulesConfiguration"
             withNamespace : 'm'
             withXmlTag    : @"ProtectionRulesConfiguration"
             withHandler   : [MPSEWSProtectionRulesServiceConfiguration class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSServiceConfigurationResponseMessageType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSResponseMessageType isValid:val forVersion:ver]) return FALSE;
    if ([val mailTipsConfiguration] && ![MPSEWSMailTipsServiceConfiguration isValid:[val mailTipsConfiguration] forVersion:ver]) return FALSE;
    if ([val unifiedMessagingConfiguration] && ![MPSEWSUnifiedMessageServiceConfiguration isValid:[val unifiedMessagingConfiguration] forVersion:ver]) return FALSE;
    if ([val protectionRulesConfiguration] && ![MPSEWSProtectionRulesServiceConfiguration isValid:[val protectionRulesConfiguration] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSServiceConfigurationResponseMessageType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ServiceConfigurationResponseMessageType: MailTipsConfiguration=%@ UnifiedMessagingConfiguration=%@ ProtectionRulesConfiguration=%@ super=%@", _mailTipsConfiguration, _unifiedMessagingConfiguration, _protectionRulesConfiguration, [super description]];
}

@end

