#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSCreateRuleOperationType.h"
#import "../types/MPSEWSRuleType.h"


@implementation MPSEWSCreateRuleOperationType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSCreateRuleOperationType class]];

    [handler property      : @"rule"
             withNamespace : 't'
             withXmlTag    : @"Rule"
             withHandler   : [MPSEWSRuleType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSCreateRuleOperationType*) val
{   (void) val;
    if (![MPSEWSRuleOperationType isValid:val]) return FALSE;
    if ([val rule] && ![MPSEWSRuleType isValid:[val rule]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSCreateRuleOperationType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"CreateRuleOperationType: Rule=%@ super=%@", _rule, [super description]];
}

@end

