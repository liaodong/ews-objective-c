#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSBaseObjectChangedEventType.h"
#import "../handlers/EWSDateTimeTypeHandler.h"
#import "../types/EWSFolderIdType.h"
#import "../types/EWSWatermarkType.h"


@implementation EWSBaseObjectChangedEventType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSBaseObjectChangedEventType class]];

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

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSBaseObjectChangedEventType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"BaseObjectChangedEventType: TimeStamp=%@ ParentFolderId=%@ super=%@", _timeStamp, _parentFolderId, [super description]];
}

@end

