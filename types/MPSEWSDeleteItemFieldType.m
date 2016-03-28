#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSDeleteItemFieldType.h"
#import "../types/MPSEWSBasePathToElementType.h"


@implementation MPSEWSDeleteItemFieldType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSDeleteItemFieldType class]];

    [handler property      : @"path"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Path"
             withHandler   : [MPSEWSBasePathToElementType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSDeleteItemFieldType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"DeleteItemFieldType: super=%@", [super description]];
}

@end

