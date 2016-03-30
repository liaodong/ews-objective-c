#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSExistsType.h"
#import "../types/MPSEWSBasePathToElementType.h"


@implementation MPSEWSExistsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSExistsType class]];

    [handler property      : @"path"
             withNamespace : 't'
             withXmlTag    : @"Path"
             withHandler   : [MPSEWSBasePathToElementType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSExistsType*) val
{   (void) val;
    if (![MPSEWSSearchExpressionType isValid:val]) return FALSE;
    if ([val path] && ![MPSEWSBasePathToElementType isValid:[val path]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSExistsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ExistsType: Path=%@ super=%@", _path, [super description]];
}

@end

