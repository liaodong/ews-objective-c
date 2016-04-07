#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSRuleOperationErrorType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../types/MPSEWSArrayOfRuleValidationErrorsType.h"


@implementation MPSEWSRuleOperationErrorType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSRuleOperationErrorType class]];

    [handler property      : @"operationIndex"
             withNamespace : 't'
             withXmlTag    : @"OperationIndex"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"validationErrors"
             withNamespace : 't'
             withXmlTag    : @"ValidationErrors"
             withHandler   : [MPSEWSArrayOfRuleValidationErrorsType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSRuleOperationErrorType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val operationIndex] && ![MPSEWSIntegerTypeHandler isValid:[val operationIndex] forVersion:ver]) return FALSE;
    if ([val validationErrors] && ![MPSEWSArrayOfRuleValidationErrorsType isValid:[val validationErrors] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSRuleOperationErrorType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"RuleOperationErrorType: OperationIndex=%@ ValidationErrors=%@", _operationIndex, _validationErrors];
}

@end

