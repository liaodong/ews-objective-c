#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfRuleValidationErrorsType.h"
#import "../types/MPSEWSRuleValidationErrorType.h"


@implementation MPSEWSArrayOfRuleValidationErrorsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfRuleValidationErrorsType class]];

    [handler listProperty  : @"error"
             useSelector   : @"addError"
             withNamespace : 't'
             withXmlTag    : @"Error"
             withHandler   : [MPSEWSRuleValidationErrorType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSArrayOfRuleValidationErrorsType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val error]) {
        for (MPSEWSRuleValidationErrorType* obj in [val error]) {
            if (![MPSEWSRuleValidationErrorType isValid:obj forVersion:ver]) return FALSE;
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
    return [MPSEWSArrayOfRuleValidationErrorsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfRuleValidationErrorsType: Error=%@", _error];
}

- (void) addError:(MPSEWSRuleValidationErrorType*) elem
{
    if (![self error]) {
        [self setError:[[NSMutableArray<MPSEWSRuleValidationErrorType*> alloc] init]];
    }
    [_error addObject:elem];
}

@end

