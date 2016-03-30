#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSExcludesType.h"
#import "../types/MPSEWSBasePathToElementType.h"
#import "../types/MPSEWSExcludesValueType.h"


@implementation MPSEWSExcludesType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSExcludesType class]];

    [handler property      : @"path"
             withNamespace : 't'
             withXmlTag    : @"Path"
             withHandler   : [MPSEWSBasePathToElementType class]];

    [handler property      : @"bitmask"
             withNamespace : 't'
             withXmlTag    : @"Bitmask"
             withHandler   : [MPSEWSExcludesValueType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSExcludesType*) val
{   (void) val;
    if (![MPSEWSSearchExpressionType isValid:val]) return FALSE;
    if ([val path] && ![MPSEWSBasePathToElementType isValid:[val path]]) return FALSE;
    if ([val bitmask] && ![MPSEWSExcludesValueType isValid:[val bitmask]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSExcludesType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ExcludesType: Path=%@ Bitmask=%@ super=%@", _path, _bitmask, [super description]];
}

@end

