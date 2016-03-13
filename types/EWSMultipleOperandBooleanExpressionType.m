#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSMultipleOperandBooleanExpressionType.h"


@implementation EWSMultipleOperandBooleanExpressionType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSMultipleOperandBooleanExpressionType class]];

    [handler property   : @"searchExpression"
             isRequired : TRUE
             withXmlTag : @"SearchExpression"
             withHandler: [EWSSearchExpressionType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSMultipleOperandBooleanExpressionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"MultipleOperandBooleanExpressionType: SearchExpression=%@ super=%@", _searchExpression, [super description]];
}

@end

