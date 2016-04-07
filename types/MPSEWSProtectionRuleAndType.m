#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSProtectionRuleAndType.h"
#import "../types/MPSEWSProtectionRuleAllInternalType.h"
#import "../types/MPSEWSProtectionRuleAndType.h"
#import "../types/MPSEWSProtectionRuleRecipientIsType.h"
#import "../types/MPSEWSProtectionRuleSenderDepartmentsType.h"
#import "../types/MPSEWSProtectionRuleTrueType.h"


@implementation MPSEWSProtectionRuleAndType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSProtectionRuleAndType class]];

    [handler listProperty  : @"allInternal"
             useSelector   : @"addAllInternal"
             withNamespace : 't'
             withXmlTag    : @"AllInternal"
             withHandler   : [MPSEWSProtectionRuleAllInternalType class]];

    [handler listProperty  : @"and"
             useSelector   : @"addAnd"
             withNamespace : 't'
             withXmlTag    : @"And"
             withHandler   : [MPSEWSProtectionRuleAndType class]];

    [handler listProperty  : @"recipientIs"
             useSelector   : @"addRecipientIs"
             withNamespace : 't'
             withXmlTag    : @"RecipientIs"
             withHandler   : [MPSEWSProtectionRuleRecipientIsType class]];

    [handler listProperty  : @"senderDepartments"
             useSelector   : @"addSenderDepartments"
             withNamespace : 't'
             withXmlTag    : @"SenderDepartments"
             withHandler   : [MPSEWSProtectionRuleSenderDepartmentsType class]];

    [handler listProperty  : @"pTrue"
             useSelector   : @"addTrue"
             withNamespace : 't'
             withXmlTag    : @"True"
             withHandler   : [MPSEWSProtectionRuleTrueType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSProtectionRuleAndType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val allInternal]) {
        for (NSString* obj in [val allInternal]) {
            if (![MPSEWSProtectionRuleAllInternalType isValid:obj forVersion:ver]) return FALSE;
        }
    }
    if ([val and]) {
        for (MPSEWSProtectionRuleAndType* obj in [val and]) {
            if (![MPSEWSProtectionRuleAndType isValid:obj forVersion:ver]) return FALSE;
        }
    }
    if ([val recipientIs]) {
        for (MPSEWSProtectionRuleRecipientIsType* obj in [val recipientIs]) {
            if (![MPSEWSProtectionRuleRecipientIsType isValid:obj forVersion:ver]) return FALSE;
        }
    }
    if ([val senderDepartments]) {
        for (MPSEWSProtectionRuleSenderDepartmentsType* obj in [val senderDepartments]) {
            if (![MPSEWSProtectionRuleSenderDepartmentsType isValid:obj forVersion:ver]) return FALSE;
        }
    }
    if ([val pTrue]) {
        for (NSString* obj in [val pTrue]) {
            if (![MPSEWSProtectionRuleTrueType isValid:obj forVersion:ver]) return FALSE;
        }
    }
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSProtectionRuleAndType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ProtectionRuleAndType: AllInternal=%@ And=%@ RecipientIs=%@ SenderDepartments=%@ True=%@", _allInternal, _and, _recipientIs, _senderDepartments, _pTrue];
}

- (void) addAllInternal:(NSString*) elem
{
    if (![self allInternal]) {
        [self setAllInternal:[[NSMutableArray<NSString*> alloc] init]];
    }
    [_allInternal addObject:elem];
}

- (void) addAnd:(MPSEWSProtectionRuleAndType*) elem
{
    if (![self and]) {
        [self setAnd:[[NSMutableArray<MPSEWSProtectionRuleAndType*> alloc] init]];
    }
    [_and addObject:elem];
}

- (void) addRecipientIs:(MPSEWSProtectionRuleRecipientIsType*) elem
{
    if (![self recipientIs]) {
        [self setRecipientIs:[[NSMutableArray<MPSEWSProtectionRuleRecipientIsType*> alloc] init]];
    }
    [_recipientIs addObject:elem];
}

- (void) addSenderDepartments:(MPSEWSProtectionRuleSenderDepartmentsType*) elem
{
    if (![self senderDepartments]) {
        [self setSenderDepartments:[[NSMutableArray<MPSEWSProtectionRuleSenderDepartmentsType*> alloc] init]];
    }
    [_senderDepartments addObject:elem];
}

- (void) addTrue:(NSString*) elem
{
    if (![self pTrue]) {
        [self setPTrue:[[NSMutableArray<NSString*> alloc] init]];
    }
    [_pTrue addObject:elem];
}

@end

