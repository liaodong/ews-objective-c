#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSContainsExpressionType.h"
#import "../types/MPSEWSBasePathToElementType.h"
#import "../types/MPSEWSConstantValueType.h"
#import "../types/MPSEWSContainmentComparisonType.h"
#import "../types/MPSEWSContainmentModeType.h"


@implementation MPSEWSContainsExpressionType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSContainsExpressionType class]];

    [handler property    : @"containmentMode"
             withAttrTag : @"ContainmentMode"
             withHandler : [MPSEWSContainmentModeType class]];

    [handler property    : @"containmentComparison"
             withAttrTag : @"ContainmentComparison"
             withHandler : [MPSEWSContainmentComparisonType class]];

    [handler property      : @"path"
             withNamespace : 't'
             withXmlTag    : @"Path"
             withHandler   : [MPSEWSBasePathToElementType class]];

    [handler property      : @"constant"
             withNamespace : 't'
             withXmlTag    : @"Constant"
             withHandler   : [MPSEWSConstantValueType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSContainsExpressionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ContainsExpressionType: ContainmentMode=%@ ContainmentComparison=%@ Path=%@ Constant=%@ super=%@", _containmentMode, _containmentComparison, _path, _constant, [super description]];
}

@end

