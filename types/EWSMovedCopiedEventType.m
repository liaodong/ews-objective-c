#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSMovedCopiedEventType.h"
#import "../handlers/EWSDateTimeTypeHandler.h"
#import "../types/EWSFolderIdType.h"
#import "../types/EWSWatermarkType.h"


@implementation EWSMovedCopiedEventType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSMovedCopiedEventType class]];

    [handler property      : @"watermark"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Watermark"
             withHandler   : [EWSWatermarkType class]];

    [handler property      : @"timeStamp"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"TimeStamp"
             withHandler   : [EWSDateTimeTypeHandler class]];

    [handler property      : @"parentFolderId"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"ParentFolderId"
             withHandler   : [EWSFolderIdType class]];

    [handler property      : @"oldParentFolderId"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"OldParentFolderId"
             withHandler   : [EWSFolderIdType class]];

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

