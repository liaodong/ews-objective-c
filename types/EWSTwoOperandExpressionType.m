#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSTwoOperandExpressionType.h"


@implementation EWSTwoOperandExpressionType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSTwoOperandExpressionType class]];

    [handler property   : @"path"
             isRequired : TRUE
             withXmlTag : @"Path"
             withHandler: [EWSBasePathToElementType class]];

    [handler property   : @"fieldURIOrConstant"
             isRequired : TRUE
             withXmlTag : @"FieldURIOrConstant"
             withHandler: [EWSFieldURIOrConstantType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSTwoOperandExpressionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"TwoOperandExpressionType: Path=%@ FieldURIOrConstant=%@ super=%@", _path, _fieldURIOrConstant, [super description]];
}

@end

