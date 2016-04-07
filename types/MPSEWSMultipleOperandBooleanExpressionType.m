#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSMultipleOperandBooleanExpressionType.h"
#import "../types/MPSEWSSearchExpressionType.h"


@implementation MPSEWSMultipleOperandBooleanExpressionType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSMultipleOperandBooleanExpressionType class]];

    [handler property      : @"searchExpression"
             withNamespace : 't'
             withXmlTag    : @"SearchExpression"
             withHandler   : [MPSEWSSearchExpressionType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSMultipleOperandBooleanExpressionType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSSearchExpressionType isValid:val forVersion:ver]) return FALSE;
    if ([val searchExpression] && ![MPSEWSSearchExpressionType isValid:[val searchExpression] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSMultipleOperandBooleanExpressionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"MultipleOperandBooleanExpressionType: SearchExpression=%@ super=%@", _searchExpression, [super description]];
}

@end

