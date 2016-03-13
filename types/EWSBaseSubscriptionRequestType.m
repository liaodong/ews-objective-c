#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSBaseSubscriptionRequestType.h"


@implementation EWSBaseSubscriptionRequestType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSBaseSubscriptionRequestType class]];

    [handler property   : @"folderIds"
             isRequired : TRUE
             withXmlTag : @"FolderIds"
             withHandler: [EWSNonEmptyArrayOfBaseFolderIdsType class]];

    [handler property   : @"eventTypes"
             isRequired : TRUE
             withXmlTag : @"EventTypes"
             withHandler: [EWSNonEmptyArrayOfNotificationEventTypesType class]];

    [handler property   : @"watermark"
             isRequired : FALSE
             withXmlTag : @"Watermark"
             withHandler: [EWSWatermarkType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSBaseSubscriptionRequestType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"BaseSubscriptionRequestType: FolderIds=%@ EventTypes=%@ Watermark=%@", _folderIds, _eventTypes, _watermark];
}

@end

