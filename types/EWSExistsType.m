#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSExistsType.h"
#import "../types/EWSBasePathToElementType.h"


@implementation EWSExistsType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSExistsType class]];

    [handler property      : @"path"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Path"
             withHandler   : [EWSBasePathToElementType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSExistsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ExistsType: Path=%@ super=%@", _path, [super description]];
}

@end

