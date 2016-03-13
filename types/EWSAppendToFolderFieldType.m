#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSAppendToFolderFieldType.h"


@implementation EWSAppendToFolderFieldType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSAppendToFolderFieldType class]];

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
    return [EWSAppendToFolderFieldType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"AppendToFolderFieldType: super=%@", [super description]];
}

@end

