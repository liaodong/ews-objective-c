#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSFolderResponseShapeType.h"


@implementation EWSFolderResponseShapeType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSFolderResponseShapeType class]];

    [handler property   : @"baseShape"
             isRequired : TRUE
             withXmlTag : @"BaseShape"
             withHandler: [EWSDefaultShapeNamesType class]];

    [handler property   : @"additionalProperties"
             isRequired : FALSE
             withXmlTag : @"AdditionalProperties"
             withHandler: [EWSNonEmptyArrayOfPathsToElementType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSFolderResponseShapeType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FolderResponseShapeType: BaseShape=%@ AdditionalProperties=%@", _baseShape, _additionalProperties];
}

@end

