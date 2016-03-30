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
             withNamespace : 't'
             withXmlTag    : @"FolderIds"
             withHandler   : [MPSEWSNonEmptyArrayOfBaseFolderIdsType class]];

    [handler property      : @"eventTypes"
             withNamespace : 't'
             withXmlTag    : @"EventTypes"
             withHandler   : [MPSEWSNonEmptyArrayOfNotificationEventTypesType class]];

    [handler property      : @"watermark"
             withNamespace : 't'
             withXmlTag    : @"Watermark"
             withHandler   : [MPSEWSWatermarkType class]];

    [handler property      : @"timeout"
             withNamespace : 't'
             withXmlTag    : @"Timeout"
             withHandler   : [MPSEWSSubscriptionTimeoutType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSPullSubscriptionRequestType*) val
{   (void) val;
    if (![MPSEWSBaseSubscriptionRequestType isValid:val]) return FALSE;
    if ([val timeout] && ![MPSEWSSubscriptionTimeoutType isValid:[val timeout]]) return FALSE;
    return TRUE;
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

