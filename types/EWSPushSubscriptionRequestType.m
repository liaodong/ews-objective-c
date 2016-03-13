#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSPushSubscriptionRequestType.h"


@implementation EWSPushSubscriptionRequestType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSPushSubscriptionRequestType class]];

    [handler property      : @"folderIds"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"FolderIds"
             withHandler   : [EWSNonEmptyArrayOfBaseFolderIdsType class]];

    [handler property      : @"eventTypes"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"EventTypes"
             withHandler   : [EWSNonEmptyArrayOfNotificationEventTypesType class]];

    [handler property      : @"watermark"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Watermark"
             withHandler   : [EWSWatermarkType class]];

    [handler property      : @"statusFrequency"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"StatusFrequency"
             withHandler   : [EWSSubscriptionStatusFrequencyType class]];

    [handler property      : @"uRL"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"URL"
             withHandler   : [EWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSPushSubscriptionRequestType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"PushSubscriptionRequestType: StatusFrequency=%@ URL=%@ super=%@", _statusFrequency, _uRL, [super description]];
}

@end

