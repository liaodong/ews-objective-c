#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSItemChangeDescriptionType.h"
#import "../types/MPSEWSBasePathToElementType.h"


@implementation MPSEWSItemChangeDescriptionType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSItemChangeDescriptionType class]];

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
    return [MPSEWSItemChangeDescriptionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ItemChangeDescriptionType: super=%@", [super description]];
}

@end

