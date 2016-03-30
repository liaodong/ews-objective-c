#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSFolderChangeDescriptionType.h"
#import "../types/MPSEWSBasePathToElementType.h"


@implementation MPSEWSFolderChangeDescriptionType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSFolderChangeDescriptionType class]];

    [handler property      : @"path"
             withNamespace : 't'
             withXmlTag    : @"Path"
             withHandler   : [MPSEWSBasePathToElementType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSFolderChangeDescriptionType*) val
{   (void) val;
    if (![MPSEWSChangeDescriptionType isValid:val]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSFolderChangeDescriptionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FolderChangeDescriptionType: super=%@", [super description]];
}

@end

