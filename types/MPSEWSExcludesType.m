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
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Path"
             withHandler   : [MPSEWSBasePathToElementType class]];

    [handler property      : @"bitmask"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Bitmask"
             withHandler   : [MPSEWSExcludesValueType class]];

    [handler register];
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

