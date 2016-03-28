#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSExcludesType.h"
#import "../types/EWSBasePathToElementType.h"
#import "../types/EWSExcludesValueType.h"


@implementation EWSExcludesType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSExcludesType class]];

    [handler property      : @"path"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Path"
             withHandler   : [EWSBasePathToElementType class]];

    [handler property      : @"bitmask"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Bitmask"
             withHandler   : [EWSExcludesValueType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSExcludesType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ExcludesType: Path=%@ Bitmask=%@ super=%@", _path, _bitmask, [super description]];
}

@end

