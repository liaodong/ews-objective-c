#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSProtectionRuleType.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSProtectionRuleActionType.h"
#import "../types/MPSEWSProtectionRuleConditionType.h"


@implementation MPSEWSProtectionRuleType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSProtectionRuleType class]];

    [handler property    : @"name"
             withAttrTag : @"Name"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler property    : @"userOverridable"
             withAttrTag : @"UserOverridable"
             withHandler : [MPSEWSBooleanTypeHandler class]];

    [handler property    : @"priority"
             withAttrTag : @"Priority"
             withHandler : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"condition"
             withNamespace : 't'
             withXmlTag    : @"Condition"
             withHandler   : [MPSEWSProtectionRuleConditionType class]];

    [handler property      : @"action"
             withNamespace : 't'
             withXmlTag    : @"Action"
             withHandler   : [MPSEWSProtectionRuleActionType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSProtectionRuleType*) val
{   (void) val;
    if ([val name] && ![MPSEWSStringTypeHandler isValid:[val name]]) return FALSE;
    if ([val userOverridable] && ![MPSEWSBooleanTypeHandler isValid:[val userOverridable]]) return FALSE;
    if ([val priority] && ![MPSEWSIntegerTypeHandler isValid:[val priority]]) return FALSE;
    if ([val condition] && ![MPSEWSProtectionRuleConditionType isValid:[val condition]]) return FALSE;
    if ([val action] && ![MPSEWSProtectionRuleActionType isValid:[val action]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSProtectionRuleType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ProtectionRuleType: Name=%@ UserOverridable=%@ Priority=%@ Condition=%@ Action=%@", _name, _userOverridable, _priority, _condition, _action];
}

@end

