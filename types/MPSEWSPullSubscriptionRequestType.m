#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSPullSubscriptionRequestType.h"
#import "../types/MPSEWSNonEmptyArrayOfBaseFolderIdsType.h"
#import "../types/MPSEWSNonEmptyArrayOfNotificationEventTypesType.h"
#import "../types/MPSEWSSubscriptionTimeoutType.h"
#import "../types/MPSEWSWatermarkType.h"


@implementation MPSEWSPullSubscriptionRequestType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSPullSubscriptionRequestType class]];

    [handler property      : @"folderIds"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"FolderIds"
             withHandler   : [MPSEWSNonEmptyArrayOfBaseFolderIdsType class]];

    [handler property      : @"eventTypes"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"EventTypes"
             withHandler   : [MPSEWSNonEmptyArrayOfNotificationEventTypesType class]];

    [handler property      : @"watermark"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Watermark"
             withHandler   : [MPSEWSWatermarkType class]];

    [handler property      : @"timeout"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Timeout"
             withHandler   : [MPSEWSSubscriptionTimeoutType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSPullSubscriptionRequestType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"PullSubscriptionRequestType: Timeout=%@ super=%@", _timeout, [super description]];
}

@end

