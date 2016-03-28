#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSModifiedEventType.h"
#import "../handlers/MPSEWSDateTimeTypeHandler.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../types/MPSEWSFolderIdType.h"
#import "../types/MPSEWSWatermarkType.h"


@implementation MPSEWSModifiedEventType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSModifiedEventType class]];

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

    [handler property      : @"unreadCount"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"UnreadCount"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler register];
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

