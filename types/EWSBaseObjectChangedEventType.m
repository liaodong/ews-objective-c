#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSBaseObjectChangedEventType.h"


@implementation EWSBaseObjectChangedEventType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSBaseObjectChangedEventType class]];

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

