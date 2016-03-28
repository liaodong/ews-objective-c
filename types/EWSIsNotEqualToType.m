#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSIsNotEqualToType.h"
#import "../types/EWSBasePathToElementType.h"
#import "../types/EWSFieldURIOrConstantType.h"


@implementation EWSIsNotEqualToType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSIsNotEqualToType class]];

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
    return [EWSIsNotEqualToType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"IsNotEqualToType: super=%@", [super description]];
}

@end

