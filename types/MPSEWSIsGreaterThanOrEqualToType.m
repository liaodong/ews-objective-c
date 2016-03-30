#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSIsGreaterThanOrEqualToType.h"
#import "../types/MPSEWSBasePathToElementType.h"
#import "../types/MPSEWSFieldURIOrConstantType.h"


@implementation MPSEWSIsGreaterThanOrEqualToType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSIsGreaterThanOrEqualToType class]];

    [handler property      : @"path"
             withNamespace : 't'
             withXmlTag    : @"Path"
             withHandler   : [MPSEWSBasePathToElementType class]];

    [handler property      : @"fieldURIOrConstant"
             withNamespace : 't'
             withXmlTag    : @"FieldURIOrConstant"
             withHandler   : [MPSEWSFieldURIOrConstantType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSIsGreaterThanOrEqualToType*) val
{   (void) val;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSIsGreaterThanOrEqualToType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"IsGreaterThanOrEqualToType: super=%@", [super description]];
}

@end

