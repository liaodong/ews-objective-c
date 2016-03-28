#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSIsLessThanType.h"
#import "../types/MPSEWSBasePathToElementType.h"
#import "../types/MPSEWSFieldURIOrConstantType.h"


@implementation MPSEWSIsLessThanType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSIsLessThanType class]];

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
    return [MPSEWSIsLessThanType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"IsLessThanType: super=%@", [super description]];
}

@end

