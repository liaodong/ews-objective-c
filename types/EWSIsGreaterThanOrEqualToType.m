#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSIsGreaterThanOrEqualToType.h"
#import "../types/EWSBasePathToElementType.h"
#import "../types/EWSFieldURIOrConstantType.h"


@implementation EWSIsGreaterThanOrEqualToType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSIsGreaterThanOrEqualToType class]];

    [handler property      : @"path"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Path"
             withHandler   : [EWSBasePathToElementType class]];

    [handler property      : @"fieldURIOrConstant"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"FieldURIOrConstant"
             withHandler   : [EWSFieldURIOrConstantType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSIsGreaterThanOrEqualToType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"IsGreaterThanOrEqualToType: super=%@", [super description]];
}

@end

