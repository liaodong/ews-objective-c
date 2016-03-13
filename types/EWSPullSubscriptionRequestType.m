#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSPullSubscriptionRequestType.h"


@implementation EWSPullSubscriptionRequestType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSPullSubscriptionRequestType class]];

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

    [handler property   : @"timeout"
             isRequired : TRUE
             withXmlTag : @"Timeout"
             withHandler: [EWSSubscriptionTimeoutType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSPullSubscriptionRequestType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"PullSubscriptionRequestType: Timeout=%@ super=%@", _timeout, [super description]];
}

@end

