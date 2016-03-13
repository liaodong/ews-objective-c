#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSIsGreaterThanType.h"


@implementation EWSIsGreaterThanType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSIsGreaterThanType class]];

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
    return [EWSIsGreaterThanType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"IsGreaterThanType: super=%@", [super description]];
}

@end

