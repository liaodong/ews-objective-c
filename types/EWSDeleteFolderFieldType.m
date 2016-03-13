#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSDeleteFolderFieldType.h"


@implementation EWSDeleteFolderFieldType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSDeleteFolderFieldType class]];

    [handler property   : @"path"
             isRequired : TRUE
             withXmlTag : @"Path"
             withHandler: [EWSBasePathToElementType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSDeleteFolderFieldType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"DeleteFolderFieldType: super=%@", [super description]];
}

@end

