#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSProtectionRulesServiceConfiguration.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../types/MPSEWSArrayOfProtectionRulesType.h"
#import "../types/MPSEWSSmtpDomainList.h"


@implementation MPSEWSProtectionRulesServiceConfiguration 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSProtectionRulesServiceConfiguration class]];

    [handler property    : @"refreshInterval"
             withAttrTag : @"RefreshInterval"
             withHandler : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"rules"
             withNamespace : 't'
             withXmlTag    : @"Rules"
             withHandler   : [MPSEWSArrayOfProtectionRulesType class]];

    [handler property      : @"internalDomains"
             withNamespace : 't'
             withXmlTag    : @"InternalDomains"
             withHandler   : [MPSEWSSmtpDomainList class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSProtectionRulesServiceConfiguration*) val
{   (void) val;
    if (![MPSEWSServiceConfiguration isValid:val]) return FALSE;
    if ([val refreshInterval] && ![MPSEWSIntegerTypeHandler isValid:[val refreshInterval]]) return FALSE;
    if ([val rules] && ![MPSEWSArrayOfProtectionRulesType isValid:[val rules]]) return FALSE;
    if ([val internalDomains] && ![MPSEWSSmtpDomainList isValid:[val internalDomains]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSProtectionRulesServiceConfiguration class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ProtectionRulesServiceConfiguration: RefreshInterval=%@ Rules=%@ InternalDomains=%@ super=%@", _refreshInterval, _rules, _internalDomains, [super description]];
}

@end

