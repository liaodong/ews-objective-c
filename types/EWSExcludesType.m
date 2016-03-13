#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSExcludesType.h"


@implementation EWSExcludesType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSExcludesType class]];

    [handler property   : @"path"
             isRequired : TRUE
             withXmlTag : @"Path"
             withHandler: [EWSBasePathToElementType class]];

    [handler property   : @"bitmask"
             isRequired : TRUE
             withXmlTag : @"Bitmask"
             withHandler: [EWSExcludesValueType class]];

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

