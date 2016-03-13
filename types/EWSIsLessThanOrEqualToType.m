#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSIsLessThanOrEqualToType.h"


@implementation EWSIsLessThanOrEqualToType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSIsLessThanOrEqualToType class]];

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
    return [EWSIsLessThanOrEqualToType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"IsLessThanOrEqualToType: super=%@", [super description]];
}

@end

