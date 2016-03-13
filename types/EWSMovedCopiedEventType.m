#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSMovedCopiedEventType.h"


@implementation EWSMovedCopiedEventType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSMovedCopiedEventType class]];

    [handler property   : @"watermark"
             isRequired : TRUE
             withXmlTag : @"Watermark"
             withHandler: [EWSWatermarkType class]];

    [handler property   : @"timeStamp"
             isRequired : TRUE
             withXmlTag : @"TimeStamp"
             withHandler: [EWSDateTimeTypeHandler class]];

    [handler property   : @"parentFolderId"
             isRequired : TRUE
             withXmlTag : @"ParentFolderId"
             withHandler: [EWSFolderIdType class]];

    [handler property   : @"oldParentFolderId"
             isRequired : TRUE
             withXmlTag : @"OldParentFolderId"
             withHandler: [EWSFolderIdType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSMovedCopiedEventType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"MovedCopiedEventType: OldParentFolderId=%@ super=%@", _oldParentFolderId, [super description]];
}

@end

