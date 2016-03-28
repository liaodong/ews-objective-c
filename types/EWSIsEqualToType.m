#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSIsEqualToType.h"
#import "../types/EWSBasePathToElementType.h"
#import "../types/EWSFieldURIOrConstantType.h"


@implementation EWSIsEqualToType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSIsEqualToType class]];

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
    return [EWSIsEqualToType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"IsEqualToType: super=%@", [super description]];
}

@end

