#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSTwoOperandExpressionType.h"
#import "../types/MPSEWSBasePathToElementType.h"
#import "../types/MPSEWSFieldURIOrConstantType.h"


@implementation MPSEWSTwoOperandExpressionType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSTwoOperandExpressionType class]];

    [handler property      : @"path"
             withNamespace : 't'
             withXmlTag    : @"Path"
             withHandler   : [MPSEWSBasePathToElementType class]];

    [handler property      : @"fieldURIOrConstant"
             withNamespace : 't'
             withXmlTag    : @"FieldURIOrConstant"
             withHandler   : [MPSEWSFieldURIOrConstantType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSTwoOperandExpressionType*) val
{   (void) val;
    if (![MPSEWSSearchExpressionType isValid:val]) return FALSE;
    if ([val path] && ![MPSEWSBasePathToElementType isValid:[val path]]) return FALSE;
    if ([val fieldURIOrConstant] && ![MPSEWSFieldURIOrConstantType isValid:[val fieldURIOrConstant]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSTwoOperandExpressionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"TwoOperandExpressionType: Path=%@ FieldURIOrConstant=%@ super=%@", _path, _fieldURIOrConstant, [super description]];
}

@end

