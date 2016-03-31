#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSRuleValidationErrorType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSRuleFieldURIType.h"
#import "../types/MPSEWSRuleValidationErrorCodeType.h"


@implementation MPSEWSRuleValidationErrorType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSRuleValidationErrorType class]];

    [handler property      : @"fieldURI"
             withNamespace : 't'
             withXmlTag    : @"FieldURI"
             withHandler   : [MPSEWSRuleFieldURIType class]];

    [handler property      : @"errorCode"
             withNamespace : 't'
             withXmlTag    : @"ErrorCode"
             withHandler   : [MPSEWSRuleValidationErrorCodeType class]];

    [handler property      : @"errorMessage"
             withNamespace : 't'
             withXmlTag    : @"ErrorMessage"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"fieldValue"
             withNamespace : 't'
             withXmlTag    : @"FieldValue"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSRuleValidationErrorType*) val
{   (void) val;
    if ([val fieldURI] && ![MPSEWSRuleFieldURIType isValid:[val fieldURI]]) return FALSE;
    if ([val errorCode] && ![MPSEWSRuleValidationErrorCodeType isValid:[val errorCode]]) return FALSE;
    if ([val errorMessage] && ![MPSEWSStringTypeHandler isValid:[val errorMessage]]) return FALSE;
    if ([val fieldValue] && ![MPSEWSStringTypeHandler isValid:[val fieldValue]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSRuleValidationErrorType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"RuleValidationErrorType: FieldURI=%@ ErrorCode=%@ ErrorMessage=%@ FieldValue=%@", _fieldURI, _errorCode, _errorMessage, _fieldValue];
}

@end

