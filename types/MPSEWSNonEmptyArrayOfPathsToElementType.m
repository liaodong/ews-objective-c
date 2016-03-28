#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSNonEmptyArrayOfPathsToElementType.h"
#import "../types/MPSEWSBasePathToElementType.h"


@implementation MPSEWSNonEmptyArrayOfPathsToElementType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSNonEmptyArrayOfPathsToElementType class]];

    [handler property      : @"path"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Path"
             withHandler   : [MPSEWSBasePathToElementType class]];

    [handler register];
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

