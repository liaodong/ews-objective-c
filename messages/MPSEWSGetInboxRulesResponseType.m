#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSGetInboxRulesResponseType.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../messages/MPSEWSResponseCodeType.h"
#import "../types/MPSEWSArrayOfRulesType.h"
#import "../types/MPSEWSResponseClassType.h"


@implementation MPSEWSGetInboxRulesResponseType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSGetInboxRulesResponseType class]];

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
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"outlookRuleBlobExists"
             withNamespace : 'm'
             withXmlTag    : @"OutlookRuleBlobExists"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"inboxRules"
             withNamespace : 'm'
             withXmlTag    : @"InboxRules"
             withHandler   : [MPSEWSArrayOfRulesType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSGetInboxRulesResponseType*) val
{   (void) val;
    if (![MPSEWSResponseMessageType isValid:val]) return FALSE;
    if ([val outlookRuleBlobExists] && ![MPSEWSBooleanTypeHandler isValid:[val outlookRuleBlobExists]]) return FALSE;
    if ([val inboxRules] && ![MPSEWSArrayOfRulesType isValid:[val inboxRules]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSGetInboxRulesResponseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetInboxRulesResponseType: OutlookRuleBlobExists=%@ InboxRules=%@ super=%@", _outlookRuleBlobExists, _inboxRules, [super description]];
}

@end

