#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSAppendToFolderFieldType.h"
#import "../types/MPSEWSBasePathToElementType.h"


@implementation MPSEWSAppendToFolderFieldType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSAppendToFolderFieldType class]];

    [handler property      : @"path"
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
    return [MPSEWSAppendToFolderFieldType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"AppendToFolderFieldType: super=%@", [super description]];
}

@end

