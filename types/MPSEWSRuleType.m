#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSRuleType.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSRuleActionsType.h"
#import "../types/MPSEWSRulePredicatesType.h"


@implementation MPSEWSRuleType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSRuleType class]];

    [handler property      : @"ruleId"
             withNamespace : 't'
             withXmlTag    : @"RuleId"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"displayName"
             withNamespace : 't'
             withXmlTag    : @"DisplayName"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"priority"
             withNamespace : 't'
             withXmlTag    : @"Priority"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"isEnabled"
             withNamespace : 't'
             withXmlTag    : @"IsEnabled"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isNotSupported"
             withNamespace : 't'
             withXmlTag    : @"IsNotSupported"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"isInError"
             withNamespace : 't'
             withXmlTag    : @"IsInError"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"conditions"
             withNamespace : 't'
             withXmlTag    : @"Conditions"
             withHandler   : [MPSEWSRulePredicatesType class]];

    [handler property      : @"exceptions"
             withNamespace : 't'
             withXmlTag    : @"Exceptions"
             withHandler   : [MPSEWSRulePredicatesType class]];

    [handler property      : @"actions"
             withNamespace : 't'
             withXmlTag    : @"Actions"
             withHandler   : [MPSEWSRuleActionsType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSRuleType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val ruleId] && ![MPSEWSStringTypeHandler isValid:[val ruleId] forVersion:ver]) return FALSE;
    if ([val displayName] && ![MPSEWSStringTypeHandler isValid:[val displayName] forVersion:ver]) return FALSE;
    if ([val priority] && ![MPSEWSIntegerTypeHandler isValid:[val priority] forVersion:ver]) return FALSE;
    if ([val isEnabled] && ![MPSEWSBooleanTypeHandler isValid:[val isEnabled] forVersion:ver]) return FALSE;
    if ([val isNotSupported] && ![MPSEWSBooleanTypeHandler isValid:[val isNotSupported] forVersion:ver]) return FALSE;
    if ([val isInError] && ![MPSEWSBooleanTypeHandler isValid:[val isInError] forVersion:ver]) return FALSE;
    if ([val conditions] && ![MPSEWSRulePredicatesType isValid:[val conditions] forVersion:ver]) return FALSE;
    if ([val exceptions] && ![MPSEWSRulePredicatesType isValid:[val exceptions] forVersion:ver]) return FALSE;
    if ([val actions] && ![MPSEWSRuleActionsType isValid:[val actions] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSRuleType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"RuleType: RuleId=%@ DisplayName=%@ Priority=%@ IsEnabled=%@ IsNotSupported=%@ IsInError=%@ Conditions=%@ Exceptions=%@ Actions=%@", _ruleId, _displayName, _priority, _isEnabled, _isNotSupported, _isInError, _conditions, _exceptions, _actions];
}

@end

