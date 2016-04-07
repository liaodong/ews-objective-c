#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSNonEmptyArrayOfPathsToElementType.h"
#import "../types/MPSEWSBasePathToElementType.h"


@implementation MPSEWSNonEmptyArrayOfPathsToElementType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSNonEmptyArrayOfPathsToElementType class]];

    [handler property      : @"path"
             withNamespace : 't'
             withXmlTag    : @"Path"
             withHandler   : [MPSEWSBasePathToElementType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfPathsToElementType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val path] && ![MPSEWSBasePathToElementType isValid:[val path] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSNonEmptyArrayOfPathsToElementType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfPathsToElementType: Path=%@", _path];
}

@end

