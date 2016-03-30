#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSModifiedEventType.h"
#import "../handlers/MPSEWSDateTimeTypeHandler.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../types/MPSEWSFolderIdType.h"
#import "../types/MPSEWSItemIdType.h"
#import "../types/MPSEWSWatermarkType.h"


@implementation MPSEWSModifiedEventType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSModifiedEventType class]];

    [handler property      : @"watermark"
             withNamespace : 't'
             withXmlTag    : @"Watermark"
             withHandler   : [MPSEWSWatermarkType class]];

    [handler property      : @"timeStamp"
             withNamespace : 't'
             withXmlTag    : @"TimeStamp"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"folderId"
             withNamespace : 't'
             withXmlTag    : @"FolderId"
             withHandler   : [MPSEWSFolderIdType class]];

    [handler property      : @"itemId"
             withNamespace : 't'
             withXmlTag    : @"ItemId"
             withHandler   : [MPSEWSItemIdType class]];

    [handler property      : @"parentFolderId"
             withNamespace : 't'
             withXmlTag    : @"ParentFolderId"
             withHandler   : [MPSEWSFolderIdType class]];

    [handler property      : @"unreadCount"
             withNamespace : 't'
             withXmlTag    : @"UnreadCount"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSModifiedEventType*) val
{   (void) val;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSModifiedEventType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ModifiedEventType: UnreadCount=%@ super=%@", _unreadCount, [super description]];
}

@end

