#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfProtectionRulesType.h"
#import "../types/MPSEWSProtectionRuleType.h"


@implementation MPSEWSArrayOfProtectionRulesType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfProtectionRulesType class]];

    [handler listProperty  : @"rule"
             useSelector   : @"addRule"
             withNamespace : 't'
             withXmlTag    : @"Rule"
             withHandler   : [MPSEWSProtectionRuleType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSArrayOfProtectionRulesType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val rule]) {
        for (MPSEWSProtectionRuleType* obj in [val rule]) {
            if (![MPSEWSProtectionRuleType isValid:obj forVersion:ver]) return FALSE;
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
    return [MPSEWSArrayOfProtectionRulesType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfProtectionRulesType: Rule=%@", _rule];
}

- (void) addRule:(MPSEWSProtectionRuleType*) elem
{
    if (![self rule]) {
        [self setRule:[[NSMutableArray<MPSEWSProtectionRuleType*> alloc] init]];
    }
    [_rule addObject:elem];
}

@end

