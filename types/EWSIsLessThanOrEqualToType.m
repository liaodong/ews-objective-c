#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSIsLessThanOrEqualToType.h"
#import "../types/EWSBasePathToElementType.h"
#import "../types/EWSFieldURIOrConstantType.h"


@implementation EWSIsLessThanOrEqualToType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSIsLessThanOrEqualToType class]];

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
    return [EWSIsLessThanOrEqualToType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"IsLessThanOrEqualToType: super=%@", [super description]];
}

@end

