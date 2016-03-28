#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSFieldURIOrConstantType.h"
#import "../types/EWSBasePathToElementType.h"
#import "../types/EWSConstantValueType.h"


@implementation EWSFieldURIOrConstantType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSFieldURIOrConstantType class]];

    [handler property      : @"path"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Path"
             withHandler   : [EWSBasePathToElementType class]];

    [handler property      : @"constant"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Constant"
             withHandler   : [EWSConstantValueType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSFieldURIOrConstantType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FieldURIOrConstantType: Path=%@ Constant=%@", _path, _constant];
}

@end

