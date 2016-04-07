#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSDeleteRuleOperationType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"


@implementation MPSEWSDeleteRuleOperationType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSDeleteRuleOperationType class]];

    [handler property      : @"ruleId"
             withNamespace : 't'
             withXmlTag    : @"RuleId"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSDeleteRuleOperationType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSRuleOperationType isValid:val forVersion:ver]) return FALSE;
    if ([val ruleId] && ![MPSEWSStringTypeHandler isValid:[val ruleId] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSDeleteRuleOperationType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"DeleteRuleOperationType: RuleId=%@ super=%@", _ruleId, [super description]];
}

@end

