#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSFolderChangeDescriptionType.h"
#import "../types/EWSBasePathToElementType.h"


@implementation EWSFolderChangeDescriptionType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSFolderChangeDescriptionType class]];

    [handler property      : @"path"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Path"
             withHandler   : [EWSBasePathToElementType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSFolderChangeDescriptionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FolderChangeDescriptionType: super=%@", [super description]];
}

@end

