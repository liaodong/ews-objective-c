#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSIsNotEqualToType.h"


@implementation EWSIsNotEqualToType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSIsNotEqualToType class]];

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
    return [EWSIsNotEqualToType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"IsNotEqualToType: super=%@", [super description]];
}

@end

