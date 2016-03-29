#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSFieldURIOrConstantType.h"
#import "../types/MPSEWSBasePathToElementType.h"
#import "../types/MPSEWSConstantValueType.h"


@implementation MPSEWSFieldURIOrConstantType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSFieldURIOrConstantType class]];

    [handler property      : @"path"
             withNamespace : 't'
             withXmlTag    : @"Path"
             withHandler   : [MPSEWSBasePathToElementType class]];

    [handler property      : @"constant"
             withNamespace : 't'
             withXmlTag    : @"Constant"
             withHandler   : [MPSEWSConstantValueType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSFieldURIOrConstantType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FieldURIOrConstantType: Path=%@ Constant=%@", _path, _constant];
}

@end

