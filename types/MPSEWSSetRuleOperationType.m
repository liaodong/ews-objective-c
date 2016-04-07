#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSSetRuleOperationType.h"
#import "../types/MPSEWSRuleType.h"


@implementation MPSEWSSetRuleOperationType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSSetRuleOperationType class]];

    [handler property      : @"rule"
             withNamespace : 't'
             withXmlTag    : @"Rule"
             withHandler   : [MPSEWSRuleType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSSetRuleOperationType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSRuleOperationType isValid:val forVersion:ver]) return FALSE;
    if ([val rule] && ![MPSEWSRuleType isValid:[val rule] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSSetRuleOperationType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SetRuleOperationType: Rule=%@ super=%@", _rule, [super description]];
}

@end

