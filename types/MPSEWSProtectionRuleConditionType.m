#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSProtectionRuleConditionType.h"
#import "../types/MPSEWSProtectionRuleAllInternalType.h"
#import "../types/MPSEWSProtectionRuleAndType.h"
#import "../types/MPSEWSProtectionRuleRecipientIsType.h"
#import "../types/MPSEWSProtectionRuleSenderDepartmentsType.h"
#import "../types/MPSEWSProtectionRuleTrueType.h"


@implementation MPSEWSProtectionRuleConditionType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSProtectionRuleConditionType class]];

    [handler property      : @"allInternal"
             withNamespace : 't'
             withXmlTag    : @"AllInternal"
             withHandler   : [MPSEWSProtectionRuleAllInternalType class]];

    [handler property      : @"and"
             withNamespace : 't'
             withXmlTag    : @"And"
             withHandler   : [MPSEWSProtectionRuleAndType class]];

    [handler property      : @"recipientIs"
             withNamespace : 't'
             withXmlTag    : @"RecipientIs"
             withHandler   : [MPSEWSProtectionRuleRecipientIsType class]];

    [handler property      : @"senderDepartments"
             withNamespace : 't'
             withXmlTag    : @"SenderDepartments"
             withHandler   : [MPSEWSProtectionRuleSenderDepartmentsType class]];

    [handler property      : @"pTrue"
             withNamespace : 't'
             withXmlTag    : @"True"
             withHandler   : [MPSEWSProtectionRuleTrueType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSProtectionRuleConditionType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val allInternal] && ![MPSEWSProtectionRuleAllInternalType isValid:[val allInternal] forVersion:ver]) return FALSE;
    if ([val and ] && ![MPSEWSProtectionRuleAndType isValid:[val and ] forVersion:ver]) return FALSE;
    if ([val recipientIs] && ![MPSEWSProtectionRuleRecipientIsType isValid:[val recipientIs] forVersion:ver]) return FALSE;
    if ([val senderDepartments] && ![MPSEWSProtectionRuleSenderDepartmentsType isValid:[val senderDepartments] forVersion:ver]) return FALSE;
    if ([val pTrue] && ![MPSEWSProtectionRuleTrueType isValid:[val pTrue] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSProtectionRuleConditionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ProtectionRuleConditionType: AllInternal=%@ And=%@ RecipientIs=%@ SenderDepartments=%@ True=%@", _allInternal, _and, _recipientIs, _senderDepartments, _pTrue];
}

@end

