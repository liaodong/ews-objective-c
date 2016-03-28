#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSBaseObjectChangedEventType.h"
#import "../handlers/MPSEWSDateTimeTypeHandler.h"
#import "../types/MPSEWSFolderIdType.h"
#import "../types/MPSEWSWatermarkType.h"


@implementation MPSEWSBaseObjectChangedEventType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSBaseObjectChangedEventType class]];

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

    [handler register];
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
    return [NSString stringWithFormat:@"BaseObjectChangedEventType: TimeStamp=%@ ParentFolderId=%@ super=%@", _timeStamp, _parentFolderId, [super description]];
}

@end

