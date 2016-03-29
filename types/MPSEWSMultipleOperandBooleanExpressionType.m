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

