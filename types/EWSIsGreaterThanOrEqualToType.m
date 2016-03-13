#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSIsGreaterThanOrEqualToType.h"


@implementation EWSIsGreaterThanOrEqualToType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSIsGreaterThanOrEqualToType class]];

    [handler property   : @"path"
             isRequired : TRUE
             withXmlTag : @"Path"
             withHandler: [EWSBasePathToElementType class]];

    [handler property   : @"fieldURIOrConstant"
             isRequired : TRUE
             withXmlTag : @"FieldURIOrConstant"
             withHandler: [EWSFieldURIOrConstantType class]];

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

