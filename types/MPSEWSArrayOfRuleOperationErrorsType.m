#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfRuleOperationErrorsType.h"
#import "../types/MPSEWSRuleOperationErrorType.h"


@implementation MPSEWSArrayOfRuleOperationErrorsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfRuleOperationErrorsType class]];

    [handler listProperty  : @"ruleOperationError"
             useSelector   : @"addRuleOperationError"
             withNamespace : 't'
             withXmlTag    : @"RuleOperationError"
             withHandler   : [MPSEWSRuleOperationErrorType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSArrayOfRuleOperationErrorsType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val ruleOperationError]) {
        for (MPSEWSRuleOperationErrorType* obj in [val ruleOperationError]) {
            if (![MPSEWSRuleOperationErrorType isValid:obj forVersion:ver]) return FALSE;
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
    return [MPSEWSArrayOfRuleOperationErrorsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfRuleOperationErrorsType: RuleOperationError=%@", _ruleOperationError];
}

- (void) addRuleOperationError:(MPSEWSRuleOperationErrorType*) elem
{
    if (![self ruleOperationError]) {
        [self setRuleOperationError:[[NSMutableArray<MPSEWSRuleOperationErrorType*> alloc] init]];
    }
    [_ruleOperationError addObject:elem];
}

@end

