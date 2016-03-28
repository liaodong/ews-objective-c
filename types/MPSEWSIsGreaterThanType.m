#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSIsGreaterThanType.h"
#import "../types/MPSEWSBasePathToElementType.h"
#import "../types/MPSEWSFieldURIOrConstantType.h"


@implementation MPSEWSIsGreaterThanType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSIsGreaterThanType class]];

    [handler property      : @"path"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Path"
             withHandler   : [MPSEWSBasePathToElementType class]];

    [handler property      : @"fieldURIOrConstant"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"FieldURIOrConstant"
             withHandler   : [MPSEWSFieldURIOrConstantType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSIsGreaterThanType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"IsGreaterThanType: super=%@", [super description]];
}

@end

