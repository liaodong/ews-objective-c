#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSContainsExpressionType.h"


@implementation EWSContainsExpressionType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSContainsExpressionType class]];

    [handler property    : @"containmentMode"
             isRequired  : FALSE
             withAttrTag : @"ContainmentMode"
             withHandler : [EWSContainmentModeType class]];

    [handler property    : @"containmentComparison"
             isRequired  : FALSE
             withAttrTag : @"ContainmentComparison"
             withHandler : [EWSContainmentComparisonType class]];

    [handler property   : @"path"
             isRequired : TRUE
             withXmlTag : @"Path"
             withHandler: [EWSBasePathToElementType class]];

    [handler property   : @"constant"
             isRequired : TRUE
             withXmlTag : @"Constant"
             withHandler: [EWSConstantValueType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSContainsExpressionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ContainsExpressionType: ContainmentMode=%@ ContainmentComparison=%@ Path=%@ Constant=%@ super=%@", _containmentMode, _containmentComparison, _path, _constant, [super description]];
}

@end

