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
             withNamespace : 't'
             withXmlTag    : @"Path"
             withHandler   : [MPSEWSBasePathToElementType class]];

    [handler property      : @"fieldURIOrConstant"
             withNamespace : 't'
             withXmlTag    : @"FieldURIOrConstant"
             withHandler   : [MPSEWSFieldURIOrConstantType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSIsGreaterThanType*) val
{   (void) val;
    return TRUE;
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

