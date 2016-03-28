#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSDeleteFolderFieldType.h"
#import "../types/MPSEWSBasePathToElementType.h"


@implementation MPSEWSDeleteFolderFieldType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSDeleteFolderFieldType class]];

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
    return [MPSEWSDeleteFolderFieldType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"DeleteFolderFieldType: super=%@", [super description]];
}

@end

