#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSChangeDescriptionType.h"
#import "../types/MPSEWSBasePathToElementType.h"


@implementation MPSEWSChangeDescriptionType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSChangeDescriptionType class]];

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
    return [MPSEWSChangeDescriptionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ChangeDescriptionType: Path=%@", _path];
}

@end

