#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSIsEqualToType.h"
#import "../types/MPSEWSBasePathToElementType.h"
#import "../types/MPSEWSFieldURIOrConstantType.h"


@implementation MPSEWSIsEqualToType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSIsEqualToType class]];

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

+ (BOOL) isValid:(MPSEWSIsEqualToType*) val
{   (void) val;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSIsEqualToType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"IsEqualToType: super=%@", [super description]];
}

@end

