#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSDeleteFolderFieldType.h"
#import "../types/MPSEWSBasePathToElementType.h"


@implementation MPSEWSDeleteFolderFieldType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSDeleteFolderFieldType class]];

    [handler property      : @"path"
             withNamespace : 't'
             withXmlTag    : @"Path"
             withHandler   : [MPSEWSBasePathToElementType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSDeleteFolderFieldType*) val
{   (void) val;
    if (![MPSEWSFolderChangeDescriptionType isValid:val]) return FALSE;
    return TRUE;
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

