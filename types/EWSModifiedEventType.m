#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSModifiedEventType.h"


@implementation EWSModifiedEventType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSModifiedEventType class]];

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

    [handler property   : @"unreadCount"
             isRequired : FALSE
             withXmlTag : @"UnreadCount"
             withHandler: [EWSIntegerTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSModifiedEventType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ModifiedEventType: UnreadCount=%@ super=%@", _unreadCount, [super description]];
}

@end

