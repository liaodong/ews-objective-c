#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfRulesType.h"
#import "../types/MPSEWSRuleType.h"


@implementation MPSEWSArrayOfRulesType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfRulesType class]];

    [handler listProperty  : @"rule"
             useSelector   : @"addRule"
             withNamespace : 't'
             withXmlTag    : @"Rule"
             withHandler   : [MPSEWSRuleType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSArrayOfRulesType*) val
{   (void) val;
    if ([val rule]) {
        for (MPSEWSRuleType* obj in [val rule]) {
            if (![MPSEWSRuleType isValid:obj]) return FALSE;
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
    return [MPSEWSArrayOfRulesType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfRulesType: Rule=%@", _rule];
}

- (void) addRule:(MPSEWSRuleType*) elem
{
    if (![self rule]) {
        [self setRule:[[NSMutableArray<MPSEWSRuleType*> alloc] init]];
    }
    [_rule addObject:elem];
}

@end

