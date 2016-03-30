#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSBaseObjectChangedEventType.h"
#import "../handlers/MPSEWSDateTimeTypeHandler.h"
#import "../types/MPSEWSFolderIdType.h"
#import "../types/MPSEWSItemIdType.h"
#import "../types/MPSEWSWatermarkType.h"


@implementation MPSEWSBaseObjectChangedEventType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSBaseObjectChangedEventType class]];

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

    [handler register];
}

+ (BOOL) isValid:(MPSEWSBaseObjectChangedEventType*) val
{   (void) val;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSBaseObjectChangedEventType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"BaseObjectChangedEventType: TimeStamp=%@ FolderId=%@ ItemId=%@ ParentFolderId=%@ super=%@", _timeStamp, _folderId, _itemId, _parentFolderId, [super description]];
}

@end

