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

+ (BOOL) isValid:(MPSEWSContainsExpressionType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSSearchExpressionType isValid:val forVersion:ver]) return FALSE;
    if ([val containmentMode] && ![MPSEWSContainmentModeType isValid:[val containmentMode] forVersion: ver]) return FALSE;
    if ([val containmentComparison] && ![MPSEWSContainmentComparisonType isValid:[val containmentComparison] forVersion: ver]) return FALSE;
    if ([val path] && ![MPSEWSBasePathToElementType isValid:[val path] forVersion:ver]) return FALSE;
    if ([val constant] && ![MPSEWSConstantValueType isValid:[val constant] forVersion:ver]) return FALSE;
    return TRUE;
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

