#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSMovedCopiedEventType.h"
#import "../handlers/MPSEWSDateTimeTypeHandler.h"
#import "../types/MPSEWSFolderIdType.h"
#import "../types/MPSEWSWatermarkType.h"


@implementation MPSEWSMovedCopiedEventType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSMovedCopiedEventType class]];

    [handler property      : @"watermark"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Watermark"
             withHandler   : [MPSEWSWatermarkType class]];

    [handler property      : @"timeStamp"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"TimeStamp"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"parentFolderId"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"ParentFolderId"
             withHandler   : [MPSEWSFolderIdType class]];

    [handler property      : @"oldParentFolderId"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"OldParentFolderId"
             withHandler   : [MPSEWSFolderIdType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSMovedCopiedEventType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"MovedCopiedEventType: OldParentFolderId=%@ super=%@", _oldParentFolderId, [super description]];
}

@end

